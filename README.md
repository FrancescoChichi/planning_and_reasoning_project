# PR_ProjectDelivery

Repository for the project of Planning and Reasoning - Authors L. Monorchio and F. Chichi

### ROS packages:
Install the following ros packages: 
```
sudo apt-get install ros-<your_version>-downward
sudo apt-get install ros-<your_version>-map-server
```

##  How to compile the repository:
#### Ubuntu 14.04 - 16.04 
```
cd <your_ws>
catkin_make
```

###  Modify your .bashrc 
In order to compile the ws, you have to add the ws into your .bashrc:
```
source <your_ws>/devel/setup.bash
```
## How to run the task_planner
First of all, launch the roscore:
```
roscore
```
Launch the location service.
```
rosrun location_service loc_service.py 
```
Run the map_server with a map:
```
rosrun map_server map_server <your_map_path>
//e.g.:
rosrun map_server map_sver planning_ws/src/spqr_planning_and_reasoning/spqr_topological_plan/config/maps/map_magdeburg_real.yaml 
```
Run the topological_plan:
```
rosrun spqr_topological_plan spqr_build_topological_graph_node 
```
Start the master_plan action_server, in order to generate the problem.pddl based on the current state:
```
rosrun master_plan_action master_plan_action_server 
```
In order to start the planning,

```
cp <your_ws>/src/spqr_planning_and_reasoning/master_planner_action/config/pddl/problem.pddl <your_ws>/src/spqr_planning_and_reasoning/jsk_planning/pddl/pddl_planner/Robocup_task
```
Move to downward directory
```
cd <your_ws>/src/spqr_planning_and_reasoning/jsk_planning/pddl/pddl_planner/Robocup_task
```
In oder to use the viewer, execute the following row:
```
rosrun spqr_task_planner spqr_path_viewer_node <pddl_output_path>
```
