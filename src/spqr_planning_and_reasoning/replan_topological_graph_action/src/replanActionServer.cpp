#include <ros/ros.h>
#include <actionlib/server/simple_action_server.h>
#include <replan_topological_graph_action/replanAction.h>
#include <std_msgs/Float64.h>

#include <iostream>
#include <stdlib.h>
#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>
//#include <opencv2/imgproc.hpp>
#include <opencv2/opencv.hpp>
//stuff for reading yaml files
#include <yaml-cpp/yaml.h>
#include <nav_msgs/OccupancyGrid.h>
#include <nav_msgs/GetMap.h>
#include <geometry_msgs/Pose.h>
#include <graph.h>
#include "location_service/GetLocation.h"
#include <math.h>

class replanAction
{
protected:
  
  ros::NodeHandle nh_;
  // NodeHandle instance must be created before this line. Otherwise strange error may occur.
  actionlib::SimpleActionServer<replan_topological_graph_action ::replanAction> as_;
  std::string action_name_;
  // create messages that are used to published feedback/result
  replan_topological_graph_action ::replanFeedback feedback_;
  replan_topological_graph_action ::replanResult result_;
  
public:
  
  replanAction(std::string name) :
    as_(nh_, name, boost::bind(&replanAction::executeCBinit, this, _1), false),
    action_name_(name)
  {
    as_.start();
  }

  ~replanAction(void)
  {
  }
 
 
int getLocations(ros::NodeHandle &n, Graph *graph)
{
    ros::ServiceClient clientGetLocations = n.serviceClient<location_service::GetLocation>("location_service/get_location");
    location_service::GetLocation srvGet;
    srvGet.request.name = "";
    //get location
    if (clientGetLocations.call(srvGet))
    {
        //if the location alreay exists
        int size = srvGet.response.locations.size();
        for (int i = 0; i < size; i++)
	{   
	        graphNode nodeTemp;
		std::vector<int> list_id;
	        std::string name = srvGet.response.locations[i].name;
		//open file graph
		std::ifstream Configuration_file("/home/francesco/planning_ws/src/spqr_planning_and_reasoning/spqr_topological_plan/config/configTopologic.txt");
		if (Configuration_file)
		{
			std::string line;
			bool notFound = true;			
			while (getline (Configuration_file,line) && notFound)
			{
				Configuration_file.ignore(0);
				if((name[0] == line[0]) && (name[1] == line[1]))
				{
	 	  			float x = srvGet.response.locations[i].pose.position.x;
	    	    			float y = srvGet.response.locations[i].pose.position.y;
		    			nodeTemp.pos_x = x;
		    			nodeTemp.pos_y = y;
		    			graph->addNode(nodeTemp,list_id,1,name);
					notFound = false;    
	        		}
	  		}
		}
	}
	return graph->getNodeList().size();
    } 
    else 
    {
        std::cout <<"Failed to call service location_service/GetLocation" << std::endl;
	return -1;
    }
}
 
 
void drawNode(cv::Mat inputMap, Graph gra, float mapRes, geometry_msgs::Pose mapOrig, int Localizer_size)
{
    pGraph nodes=gra.getNodeList();
    for(int i = 0; i< nodes.size(); i++)
    {
	//draw node on map 
	circle(inputMap, pointToPixel(cv::Point2f(nodes.at(i).pos_x,nodes.at(i).pos_y),mapRes,mapOrig), 7, cv::Scalar(100, 100, 100), -1);	
	std::string label;
	//draw label node 
	label = nodes.at(i).label;
	label.append(" (");
	label.append(std::to_string(nodes.at(i).id));
	label.append(")");
	putText(inputMap, label, pointToPixel(cv::Point2f(nodes.at(i).pos_x, nodes.at(i).pos_y),mapRes,mapOrig), cv::FONT_HERSHEY_PLAIN, 0.6, CV_RGB(0,0,0), 1.0);  
	//draw line
	for(int k=0; k < nodes.at(i).list_id.size();k++)
	{
	      line(inputMap,  pointToPixel(cv::Point2f(nodes.at(i).pos_x,nodes.at(i).pos_y),mapRes,mapOrig) , 
			      pointToPixel(cv::Point2f(nodes.at(nodes.at(i).list_id.at(k)).pos_x,nodes.at(nodes.at(i).list_id.at(k)).pos_y),mapRes,mapOrig), 
			      cv::Scalar(0, 255, 0),1,8,0);		
	}
    }
    //draw robot on map
    cv::Point2f robot_pos;
    robot_pos.x=feedback_.goal[2];
    robot_pos.y=feedback_.goal[3];
    circle(inputMap, pointToPixel(robot_pos,mapRes,mapOrig), 4, cv::Scalar(255, 0, 0), -1);	
    //draw obstacle as bounding box
    cv::Point2f obstacle;
    cv::Point2f obstacle2;
    obstacle.x=feedback_.goal[0]-0.2;
    obstacle.y=feedback_.goal[1]-0.2;
    obstacle2.x=feedback_.goal[0]+0.2;
    obstacle2.y=feedback_.goal[1]+0.2;
    rectangle( inputMap, pointToPixel(obstacle,mapRes,mapOrig),pointToPixel(obstacle2,mapRes,mapOrig),cv::Scalar( 0, 0, 255 ),-1,8 );
    cv::imshow("Map", inputMap);
    cv::waitKey(0);
}

float distance_to_Line(cv::Point2f line_start, cv::Point2f line_end, cv::Point2f point)
{
	float x = (line_start.x + line_end.x)/2;
	float y = (line_start.y + line_end.y)/2;
	return sqrt(pow((x-point.x),2)+pow((y-point.y),2));
}

float euclidean_distance(cv::Point2f point1, cv::Point2f point2)
{
	float x1 = point1.x;
	float y1 = point1.y;
	float x2 = point2.x;
	float y2 = point2.y;
	return sqrt(pow((x2-x1),2)+pow((y2-y1),2));
}

void removeEdgeObstacle(cv::Mat inputMap, Graph gra, float mapRes, geometry_msgs::Pose mapOrig)
{
  //tuple of int node_from, int node_to, float distance from obstacle point to arc
  std::vector <std::tuple<int,int,float> > allEdges;
  graphNode node_to;
  float distance=0;
  cv::Point2f obstacle;
  //obstacle.x=feedback_.goal[0];
  //obstacle.y=feedback_.goal[1];
  obstacle.x=feedback_.goal[0];
  obstacle.y=feedback_.goal[1];
  pGraph nodes = gra.getNodeList();
  graphNode currentNode;
  for(int i = 0; i< nodes.size(); i++)
  {
      currentNode=nodes.at(i);
      id_adjacency listAdjNode=currentNode.list_id;
      for(int k=0; k < listAdjNode.size();k++)
      {
	  int node_from_id= currentNode.id;
	  int node_to_id= listAdjNode.at(k);
	  node_to = nodes.at(node_to_id);
	  //compute the distance from the obstacle to the line
	  cv::Point2f point1=cv::Point2f(currentNode.pos_x, currentNode.pos_y);
	  cv::Point2f point2=cv::Point2f(node_to.pos_x,node_to.pos_y);
	  distance=distance_to_Line(point1,point2,obstacle);
	  allEdges.push_back(std::make_tuple(node_from_id,node_to_id,distance));
      }
   }
   float minDistance = std::get<2>(allEdges.at(0));
   int edgeFrom = std::get<0>(allEdges.at(0));
   int edgeTo = std::get<1>(allEdges.at(0));
   
   //box of obstacle + threshold distance
   float threshold = 0.4 + 0.1;
   graphNode curr;
   graphNode succ;
   for(int i=0; i < allEdges.size();++i)
   {  
      curr = gra.getNodeList().at(std::get<0>(allEdges.at(i)));
      succ = gra.getNodeList().at(std::get<1>(allEdges.at(i)));
      if(std::get<2>(allEdges.at(i)) < threshold)
      {
	  gra.removeArc(curr, succ);
	  //color with red all the edge removed
	  line(inputMap,  pointToPixel(cv::Point2f(curr.pos_x,curr.pos_y),mapRes,mapOrig) , 
			    pointToPixel(cv::Point2f(succ.pos_x,succ.pos_y),mapRes,mapOrig), 
			    cv::Scalar(0, 0, 255),1,8,0);
	  cv::imshow("Map", inputMap);
	  cv::waitKey(0);
      }
   }
   gra.exportGraph();
}


cv::Point2f pointToPixel(cv::Point2f pt, float map_resolution, geometry_msgs::Pose map_origin)
{
  return cv::Point2f((pt.x - map_origin.position.x)/map_resolution,(pt.y - map_origin.position.y)/map_resolution);
}

cv::Point2f pixelToPoint(int x, int y, float map_resolution, geometry_msgs::Pose map_origin)
{
  return cv::Point2f(x*map_resolution + map_origin.position.x, y*map_resolution + map_origin.position.y);
}

void updateSemanticMap(Graph graph)
{   
    //take the position of the robot
    cv::Point2f robot_pos;
    robot_pos.x=feedback_.goal[2];
    robot_pos.y=feedback_.goal[3];
    pGraph nodes = graph.getNodeList();
    graphNode currentNode;
    
    //the robot nearest node label
    std::string robot_loc;
    //compute the node's minimal distance w.r.t. robot position
    cv::Point2f currentNode_pos;
    currentNode_pos.x = nodes.at(0).pos_x;
    currentNode_pos.y = nodes.at(0).pos_y;
    float min_distance = euclidean_distance(currentNode_pos, robot_pos);
    robot_loc = nodes.at(0).label;
    float curr_distance;
    for(int i = 0; i< nodes.size(); i++)
    {
	currentNode=nodes.at(i);
	currentNode_pos.x = currentNode.pos_x;
	currentNode_pos.y = currentNode.pos_y;
	curr_distance = euclidean_distance(currentNode_pos, robot_pos);
        if(curr_distance < min_distance)
	{
	    min_distance = curr_distance;
	    robot_loc = currentNode.label;
	}
    }
    std::cout << "robot at location: " << robot_loc << std::endl;
    std::cout << "SEMANTIC MAP UPDATED SUCCESFULLY" << std::endl;
  
}

void rebuildMapFromTresholds(cv::Mat &inputMap, cv::Mat &outputMap, float map_occupied_threshold, float map_free_threshold)
{
  cv::Vec3b not_visited_color(205, 205, 205);
  cv::Vec3b free_cell_color(254, 254, 254);
  cv::Vec3b occupied_cell_color(0, 0, 0); 
  int _map_occupied_threshold = round(map_occupied_threshold);
  int _map_free_threshold = round(map_free_threshold);
  //change the outputMap
  for(int r=0; r<inputMap.rows; r++)
  {
      for(int c=0; c<inputMap.cols; c++)
      {
	  int pixel_intensity = (int)inputMap.at<signed char>(r,c);
	  if(pixel_intensity == -1)
	  {
	      outputMap.at<cv::Vec3b>(r,c) = not_visited_color;
	  }
	  else
	  {
	      if(pixel_intensity > _map_occupied_threshold)
	      {
		  outputMap.at<cv::Vec3b>(r,c) = occupied_cell_color;
	      }
	      else if(pixel_intensity < _map_free_threshold)
		   {
		      outputMap.at<cv::Vec3b>(r,c) = free_cell_color;
		   }
	  }
      }
  }
}

void executeCBinit(const replan_topological_graph_action ::replanGoalConstPtr &goal)
{     
    // feedback_.goal = goal->goal;
    feedback_.goal[0] = 0.7;
    feedback_.goal[1] =-1.2;
    feedback_.goal[2] = 0.7;
    feedback_.goal[3] =-0.8;
    //import the actual graph
    Graph g;
    pGraph impGraph=g.importGraph();

    //load map from map server
    cv::Mat map_img;
    geometry_msgs::Pose map_origin;
    float map_resolution;
    float map_occupied_threshold = 65.0;
    float map_free_threshold = 19.6;
    int map_height;
    int map_width;
    nav_msgs::OccupancyGrid map;
    ros::ServiceClient map_service_client_ = nh_.serviceClient<nav_msgs::GetMap>("/static_map");
    nav_msgs::GetMap srv_map;
    if (map_service_client_.call(srv_map))
    {
	ROS_INFO("Map service called successfully");
	map = nav_msgs::OccupancyGrid(srv_map.response.map);
	map_resolution = map.info.resolution;
	map_height = map.info.height;
	map_width = map.info.width;
	map_origin = map.info.origin;
	cv::Mat map_img_tmp = cv::Mat(cv::Size(map_width, map_height), CV_8SC1, (signed char*)map.data.data());
	map_img = cv::Mat(cv::Size(map_width, map_height), CV_8UC3);
	rebuildMapFromTresholds(map_img_tmp, map_img, map_occupied_threshold, map_free_threshold);
      
	// visualize the map
	int sizeNodeLoader = getLocations(nh_,&g);

	if(sizeNodeLoader==-1)
	    as_.setAborted(result_);
	else
	{
	    //viewer image
	    cv::namedWindow("Map");
	    cv::Mat clone_map = map_img.clone();
	    drawNode(clone_map,g,map_resolution,map_origin,sizeNodeLoader);
	    removeEdgeObstacle(clone_map,g,map_resolution,map_origin);
	   
	    //viewer check 
	    impGraph=g.importGraph();
	    cv::Mat clone_map2 = map_img.clone();
	    drawNode(clone_map2,g,map_resolution,map_origin,sizeNodeLoader); 
	   
	    //update with the actual robot position on semantic map
	    updateSemanticMap(g);
	    ROS_INFO("%s: Succeeded", action_name_.c_str());
	    result_.goal = feedback_.goal;
	    as_.setSucceeded(result_);
	    cv::destroyAllWindows();
	}    
    
    }
    else
    {
	ROS_ERROR("Failed to call map service");
	as_.setAborted(result_);
    }


}


};




int main(int argc, char** argv)
{
  ros::init(argc, argv, "replan");
  replanAction replan(ros::this_node::getName());
  ros::spin();
  return 0;
}
