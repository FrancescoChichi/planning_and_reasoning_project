#include "pddlGenerator.h"
#include <stdio.h>

void PddlProblemGenerator::createProblemPddl(std::vector <std::string> objLocations, std::vector <std::string> objObjects, std::vector <std::string> edges,  std::vector<std::pair<std::string,std::string> > initObjLocation,  std::vector<std::pair<std::string,std::string> > goalObjLocation){
  //write mode file
  std::fstream myfile;
  //to check
  std::vector<bool> slots;
  for(int i = 0; i<3;++i)
      slots.push_back(true);
  
  myfile.open ("//home/luca/catkin_ws/src/Robocup@Work/spqr_planning_and_reasoning/master_planner_action/config/pddl/problem.pddl",std::fstream::out);
  myfile << "(define (problem spqr-planning)" << std::endl;
  myfile << "   (:domain spqr-task-planning)" << std::endl;
  
  //the objects of pddl's problem
  myfile << "	(:objects" << std::endl;
  myfile << "	    youbot" << std::endl;
  int n_slot=3;
  for(int i=1; i <= n_slot; ++i){
     myfile << "	    slot" << std::to_string(i) << std::endl;
  }
  myfile << std::endl;
  for(int i=0; i < objLocations.size(); ++i){
     myfile << "	    " << objLocations.at(i) << std::endl;
  }
  myfile << std::endl;
  for(int i=0; i < objObjects.size(); ++i){
     myfile << "	    " << objObjects.at(i) << std::endl;
  }
  myfile << std::endl;
  myfile << "	)";
  myfile << std::endl;
  
  //the init part of pddl's problem
  myfile << "	(:init" << std::endl;
  myfile << "	    (ROBOT youbot)" << std::endl;
  for(int i=1; i <= n_slot; ++i){
     myfile << "	    (SLOT slot" << std::to_string(i) << ")" << std::endl;
  }
  myfile << std::endl;
  for(int i=0; i < objObjects.size(); ++i){
     myfile << "	    (OBJ " << objObjects.at(i) << ")" << std::endl;
  }
  myfile << std::endl;
  for(int i=0; i < objLocations.size(); ++i){
     myfile << "	    (location " << objLocations.at(i) << ")" << std::endl;
  }
  myfile << std::endl;
  for(int i=0; i < edges.size(); ++i){
     myfile << "	    " << edges.at(i) << std::endl;
  }
    
  myfile << std::endl;
  
  //myfile << "	    (robot-at-location youbot WS01)" << std::endl;
  
  myfile << std::endl;
  
  
  for(int i=0; i < initObjLocation.size(); ++i){
     if(initObjLocation.at(i).second=="slot1"){
	  slots[0]=false;
          myfile << "	    (onSLOT " << initObjLocation.at(i).first << " " << initObjLocation.at(i).second << ")" << std::endl;  
    }
    else
	if(initObjLocation.at(i).second=="slot2"){
	    slots[1]=false;
	    myfile << "	    (onSLOT " << initObjLocation.at(i).first << " " << initObjLocation.at(i).second << ")" << std::endl;  
	}
	else
	    if(initObjLocation.at(i).second=="slot3"){
	      slots[2]=false;
	      myfile << "	    (onSLOT " << initObjLocation.at(i).first << " " << initObjLocation.at(i).second << ")" << std::endl;  
	}

     else  
	  myfile << "	    (obj-at-location " << initObjLocation.at(i).first << " " << initObjLocation.at(i).second << ")" << std::endl;
  }
  myfile << std::endl;
  
  for(int i = 0; i<slots.size();++i){
     if(slots.at(i))
	myfile << "	    (emptySLOT slot" << std::to_string(i+1) << ")" << std::endl;
  }
  
  myfile << "	)";
  myfile << std::endl;
  //the goal part of pddl's problem
  myfile << "	(:goal" << std::endl;
  myfile << "               (and " << std::endl;
  for(int i=0; i < goalObjLocation.size(); ++i){
     myfile << "          	    (obj-at-location " << goalObjLocation.at(i).first << " " << goalObjLocation.at(i).second << ")" << std::endl;
  }
  myfile << "               )" << std::endl;
  myfile << "	)" << std::endl;
  myfile << ")" ;
  myfile.close(); 

  std::cout << "PDDL PROBLEM FILE WRITTEN SUCCESFULLY" << std::endl;
}
