#include <ros/ros.h>
#include <actionlib/server/simple_action_server.h>
#include <master_plan_action/masterAction.h>
#include <std_msgs/Float64.h>

#include <graph.h>
#include <DistanceMatrix.h>
#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <cv_bridge/cv_bridge.h>
#include <string>
#include <vector>
#include <algorithm> 
#include "opencv2/opencv.hpp"
#include <pddlGenerator.h>

using namespace cv; 

 struct obj{
  string name;
  string src;
  string dest;
  string container;

  obj(){};
  obj(string n, string s, string d, string c){
    name= std::move(n);
    src= std::move(s);
    dest= std::move(d);
    container= std::move(c);
  }
};

class masterAction
{
protected:
  
  ros::NodeHandle nh_;
  // NodeHandle instance must be created before this line. Otherwise strange error may occur.
  actionlib::SimpleActionServer<master_plan_action::masterAction> as_;
  std::string action_name_;
  // create messages that are used to published feedback/result
  master_plan_action::masterFeedback feedback_;
  master_plan_action::masterResult result_;
  
public:
  
  masterAction(std::string name) :
    as_(nh_, name, boost::bind(&masterAction::executeCBinit, this, _1), false),
    action_name_(name)
  {
    as_.start();
  }

  ~masterAction(void)
  {
  }
 
 
 
  bool elementFounded(std::string element, std::vector <std::string> list){
	bool check=false;
	if(std::find(list.begin(), list.end(), element) != list.end())
    		check=true;		
	return check;
}

//iterator for parse
template<class InputIterator, class T>
  InputIterator find (InputIterator first, InputIterator last, const T& val)
{
  while (first!=last) {
    if (*first==val) return first;
    ++first;
  }
  return last;
}


  void executeCBinit(const master_plan_action::masterGoalConstPtr &goal)
  {
    feedback_.goal = goal->goal;
    std::string path_yaml= "/home/francesco/planning_ws/src/spqr_planning_and_reasoning/spqr_topological_plan/config/CFH_yaml/plan_awf.yaml";
    //init the DistanceMatrix 
    DistanceMatrix dm;
    Graph g = dm.getGraphImported();
    //evaluate all possible shortest paths 
    int res;
    std::vector <std::string> pddlLocations;
    std::vector <std::string> pddlEdges;

    //load CFH parsed subset-graph's data
    FileStorage fs;
    
    fs.open(path_yaml, FileStorage::READ);
    FileNode n= fs["objects"];
    vector<obj> data;
    //evaluate all possible shortest paths   
    for (auto &&it : n)
      data.push_back(obj({(string) it["name"],
		      (string) it["source"],
		      (string) it["dest"],
		      (string) it["container"]}));
    fs.release();
    //for all elements in data parses

    std::map<std::pair<std::string,std::string>,int> edges;
    for(int i=0; i<data.size();++i){
	std::string source = data.at(i).src;
	std::string dest = data.at(i).dest;
		  
	if(!elementFounded(source, pddlLocations)){  					
	    pddlLocations.push_back(source); 
	  for(int j=0;j<data.size();++j){
		if(source != data.at(j).dest){
		    //evaluate minimal distace between the relative workstations
		    res=dm.getDistance(source,data.at(j).dest );
		    edges.insert(std::pair<std::pair<std::string,std::string>,int>(std::pair<std::string,std::string>(source,data.at(j).dest ),res));
		    edges.insert(std::pair<std::pair<std::string,std::string>,int>(std::pair<std::string,std::string>(data.at(j).dest, source ),res));
		}
	  }
	}	
	if(!elementFounded(dest, pddlLocations)){  					 
	    pddlLocations.push_back(dest); 
	    for(int j=0;j<data.size();++j){
		  if(dest != data.at(j).src){
			//evaluate minimal distace between the relative workstations
		      res=dm.getDistance(data.at(j).src,dest );
		      edges.insert(std::pair<std::pair<std::string,std::string>,int>(std::pair<std::string,std::string>(data.at(j).src,dest ),res));
		      edges.insert(std::pair<std::pair<std::string,std::string>,int>(std::pair<std::string,std::string>(dest, data.at(j).src ),res));
		  }
	    }
	}	
    }	
    int dist;
    int n_temp_nodes;
    int k=0;
    std::string temp_node;
    for (auto &it:edges){
      k++;
      //the distance between the nodes
      dist=it.second;
      n_temp_nodes=dist-1;
      if(n_temp_nodes==0){
	  pddlEdges.push_back("(edge " + it.first.first + " " + it.first.second + ")"); 
      }
      else{
	  for(int i=0;i < n_temp_nodes;i++){
	      //case with more intermediate nodes
	      if(n_temp_nodes > 1){
		    //the first node adjacency
		    if(i==0){
			pddlEdges.push_back("(edge " + it.first.first + " " + it.first.first + "_" + std::to_string(k*(i+1)) + ")"); 
			if(!elementFounded(it.first.first + "_" + std::to_string(k*(i+1)), pddlLocations))  					
				pddlLocations.push_back(it.first.first + "_" + std::to_string(k*(i+1)));
		    }
		    //the last node adjacency
		    else{
			if(i==(n_temp_nodes-1)){
			    pddlEdges.push_back("(edge " + it.first.first  + "_" + std::to_string(k*i) + " " + it.first.second + ")");
			    if(!elementFounded(it.first.first  + "_" + std::to_string(k*i), pddlLocations))  					
				pddlLocations.push_back(it.first.first  + "_" + std::to_string(k*i));
			}
			else{
			    pddlEdges.push_back("(edge " + it.first.first  + "_" + std::to_string(k*i) + " " + it.first.first  + "_" + std::to_string(k*(i+1)) + ")");
			    if(!elementFounded(it.first.first  + "_" + std::to_string(k*i), pddlLocations))  					
				pddlLocations.push_back(it.first.first  + "_" + std::to_string(k*i));
			    if(!elementFounded(it.first.first  + "_" + std::to_string(k*(i+1)), pddlLocations))  					
				pddlLocations.push_back(it.first.first  + "_" + std::to_string(k*(i+1)));
			}
		    }
	      }
	      //case with only one intermediate node
	      else{
		    pddlEdges.push_back("(edge " + it.first.first + " " + it.first.first + "_" + std::to_string(k*(i+1)) + ")");
		    pddlEdges.push_back("(edge " + it.first.first + "_" + std::to_string(k*(i+1)) + " " + it.first.second + ")");
		    if(!elementFounded(it.first.first  + "_" + std::to_string(k*(i+1)), pddlLocations))  					
				pddlLocations.push_back(it.first.first  + "_" + std::to_string(k*(i+1)));
	      }
	  }
      }
      k++;
    }  
    
    //take the list of objects from CFH, rename same objects and compute the distances between same objects (heuristic function)
    std::vector<std::string> objects;
    int l=1;
    float distance_i,distance_j;
    //tuple of distance(float) between first object (i), second object (j). the reference are data.at(i).name, data.at(j).name
    std::vector <std::tuple<int,int,float> > allDistances;
    bool found;
    for(int i=0; i< data.size();++i){
      found=false;
      for(int j=i+1; j< data.size();++j){
	    if(data.at(i).name==data.at(j).name){
		if(!found){
		  allDistances.push_back(std::make_tuple(i,i,dm.getDistance(data.at(i).src, data.at(i).dest)));
		  found=true;
		}
		allDistances.push_back(std::make_tuple(i,j,dm.getDistance(data.at(i).src, data.at(j).dest)));
		data.at(i).name = data.at(i).name + std::to_string(l++);
	    }
      
	
      }
      //compute and assign priority distances between same nodes
      if(!allDistances.empty()){
	  float distance_i;
	  float distance_j;
	  distance_i=std::get<2>(allDistances.at(0));
	  for(int k=1; k < allDistances.size();++k){
	      distance_j=std::get<2>(allDistances.at(k));
	      //reassign the goal between the objects
	      if(distance_i > distance_j){
		  data.at(std::get<0>(allDistances.at(0))).dest=data.at(std::get<0>(allDistances.at(k))).dest;
		  data.at(std::get<0>(allDistances.at(k))).dest=data.at(std::get<0>(allDistances.at(0))).dest;
	      }
	  }
      }
      allDistances.clear();
    }
    for (int i=0; i< data.size(); i++)
      objects.push_back(data.at(i).name);
  
    //take the start location of the objects from CFH
    std::vector<std::pair<std::string,std::string> > initObjLocation;
    for (int i=0; i< data.size(); i++){
      initObjLocation.push_back(std::pair<std::string,std::string>(data.at(i).name,data.at(i).src));
    }
    
    //take the goal location of the objects from CFH
    std::vector<std::pair<std::string,std::string> > goalObjLocation; 
    for (int i=0; i< data.size(); i++){
      goalObjLocation.push_back(std::pair<std::string,std::string>(data.at(i).name,data.at(i).dest));
    }
    
    //generate the pddl problem file
    PddlProblemGenerator pddl;
    pddl.createProblemPddl(pddlLocations, objects, pddlEdges,initObjLocation,goalObjLocation);
    
    result_.goal = feedback_.goal;
    as_.setSucceeded(result_);
 
  }


};




int main(int argc, char** argv)
{
  ros::init(argc, argv, "master");
  masterAction master(ros::this_node::getName());
  ros::spin();

  return 0;
}
