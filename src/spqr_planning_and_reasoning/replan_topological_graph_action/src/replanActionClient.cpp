#include <ros/ros.h>
#include <actionlib/client/simple_action_client.h>
#include <actionlib/client/terminal_state.h>
#include <replan_topological_graph_action/replanAction.h>

int main (int argc, char **argv)
{
  ros::init(argc, argv, "test_replan_topological_graph_action_server");

  // create the action client
  // true causes the client to spin its own thread
  actionlib::SimpleActionClient<replan_topological_graph_action::replanAction> ac("replan", true);

  ROS_INFO("Waiting for action server to start.");
  // wait for the action server to start
  ac.waitForServer(); //will wait for infinite time

  ROS_INFO("Action server started, sending goal.");
  // send a goal to the action server
  replan_topological_graph_action::replanGoal goal;
  goal.goal[0] = 1.1;
  goal.goal[1] = 2.2;
  ac.sendGoal(goal);

  //wait for the action to return
  bool finished_before_timeout = ac.waitForResult(ros::Duration(180.0));

  if (finished_before_timeout)
  {
    actionlib::SimpleClientGoalState state = ac.getState();
    ROS_INFO("Action finished: %s",state.toString().c_str());
    ac.cancelAllGoals();
  }
  else
    ROS_INFO("Action did not finish before the time out.");
  ac.cancelAllGoals();
  //exit
  return 0;
}
