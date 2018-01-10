# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "master_plan_action: 7 messages, 0 services")

set(MSG_I_FLAGS "-Imaster_plan_action:/home/francesco/planning_ws/devel/share/master_plan_action/msg;-Iactionlib_msgs:/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(master_plan_action_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterGoal.msg" NAME_WE)
add_custom_target(_master_plan_action_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "master_plan_action" "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterGoal.msg" ""
)

get_filename_component(_filename "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterActionGoal.msg" NAME_WE)
add_custom_target(_master_plan_action_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "master_plan_action" "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterActionGoal.msg" "actionlib_msgs/GoalID:master_plan_action/masterGoal:std_msgs/Header"
)

get_filename_component(_filename "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterActionFeedback.msg" NAME_WE)
add_custom_target(_master_plan_action_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "master_plan_action" "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterActionFeedback.msg" "actionlib_msgs/GoalID:master_plan_action/masterFeedback:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterAction.msg" NAME_WE)
add_custom_target(_master_plan_action_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "master_plan_action" "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterAction.msg" "master_plan_action/masterResult:master_plan_action/masterActionResult:std_msgs/Header:master_plan_action/masterFeedback:master_plan_action/masterGoal:master_plan_action/masterActionGoal:master_plan_action/masterActionFeedback:actionlib_msgs/GoalID:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterResult.msg" NAME_WE)
add_custom_target(_master_plan_action_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "master_plan_action" "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterResult.msg" ""
)

get_filename_component(_filename "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterActionResult.msg" NAME_WE)
add_custom_target(_master_plan_action_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "master_plan_action" "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterActionResult.msg" "master_plan_action/masterResult:actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterFeedback.msg" NAME_WE)
add_custom_target(_master_plan_action_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "master_plan_action" "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterFeedback.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(master_plan_action
  "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/master_plan_action
)
_generate_msg_cpp(master_plan_action
  "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/master_plan_action
)
_generate_msg_cpp(master_plan_action
  "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/master_plan_action
)
_generate_msg_cpp(master_plan_action
  "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterAction.msg"
  "${MSG_I_FLAGS}"
  "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterResult.msg;/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterActionResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterFeedback.msg;/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterGoal.msg;/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterActionGoal.msg;/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterActionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/master_plan_action
)
_generate_msg_cpp(master_plan_action
  "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/master_plan_action
)
_generate_msg_cpp(master_plan_action
  "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/master_plan_action
)
_generate_msg_cpp(master_plan_action
  "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/master_plan_action
)

### Generating Services

### Generating Module File
_generate_module_cpp(master_plan_action
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/master_plan_action
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(master_plan_action_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(master_plan_action_generate_messages master_plan_action_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterGoal.msg" NAME_WE)
add_dependencies(master_plan_action_generate_messages_cpp _master_plan_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterActionGoal.msg" NAME_WE)
add_dependencies(master_plan_action_generate_messages_cpp _master_plan_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterActionFeedback.msg" NAME_WE)
add_dependencies(master_plan_action_generate_messages_cpp _master_plan_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterAction.msg" NAME_WE)
add_dependencies(master_plan_action_generate_messages_cpp _master_plan_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterResult.msg" NAME_WE)
add_dependencies(master_plan_action_generate_messages_cpp _master_plan_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterActionResult.msg" NAME_WE)
add_dependencies(master_plan_action_generate_messages_cpp _master_plan_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterFeedback.msg" NAME_WE)
add_dependencies(master_plan_action_generate_messages_cpp _master_plan_action_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(master_plan_action_gencpp)
add_dependencies(master_plan_action_gencpp master_plan_action_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS master_plan_action_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(master_plan_action
  "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/master_plan_action
)
_generate_msg_eus(master_plan_action
  "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/master_plan_action
)
_generate_msg_eus(master_plan_action
  "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/master_plan_action
)
_generate_msg_eus(master_plan_action
  "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterAction.msg"
  "${MSG_I_FLAGS}"
  "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterResult.msg;/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterActionResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterFeedback.msg;/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterGoal.msg;/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterActionGoal.msg;/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterActionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/master_plan_action
)
_generate_msg_eus(master_plan_action
  "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/master_plan_action
)
_generate_msg_eus(master_plan_action
  "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/master_plan_action
)
_generate_msg_eus(master_plan_action
  "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/master_plan_action
)

### Generating Services

### Generating Module File
_generate_module_eus(master_plan_action
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/master_plan_action
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(master_plan_action_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(master_plan_action_generate_messages master_plan_action_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterGoal.msg" NAME_WE)
add_dependencies(master_plan_action_generate_messages_eus _master_plan_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterActionGoal.msg" NAME_WE)
add_dependencies(master_plan_action_generate_messages_eus _master_plan_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterActionFeedback.msg" NAME_WE)
add_dependencies(master_plan_action_generate_messages_eus _master_plan_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterAction.msg" NAME_WE)
add_dependencies(master_plan_action_generate_messages_eus _master_plan_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterResult.msg" NAME_WE)
add_dependencies(master_plan_action_generate_messages_eus _master_plan_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterActionResult.msg" NAME_WE)
add_dependencies(master_plan_action_generate_messages_eus _master_plan_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterFeedback.msg" NAME_WE)
add_dependencies(master_plan_action_generate_messages_eus _master_plan_action_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(master_plan_action_geneus)
add_dependencies(master_plan_action_geneus master_plan_action_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS master_plan_action_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(master_plan_action
  "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/master_plan_action
)
_generate_msg_lisp(master_plan_action
  "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/master_plan_action
)
_generate_msg_lisp(master_plan_action
  "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/master_plan_action
)
_generate_msg_lisp(master_plan_action
  "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterAction.msg"
  "${MSG_I_FLAGS}"
  "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterResult.msg;/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterActionResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterFeedback.msg;/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterGoal.msg;/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterActionGoal.msg;/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterActionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/master_plan_action
)
_generate_msg_lisp(master_plan_action
  "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/master_plan_action
)
_generate_msg_lisp(master_plan_action
  "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/master_plan_action
)
_generate_msg_lisp(master_plan_action
  "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/master_plan_action
)

### Generating Services

### Generating Module File
_generate_module_lisp(master_plan_action
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/master_plan_action
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(master_plan_action_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(master_plan_action_generate_messages master_plan_action_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterGoal.msg" NAME_WE)
add_dependencies(master_plan_action_generate_messages_lisp _master_plan_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterActionGoal.msg" NAME_WE)
add_dependencies(master_plan_action_generate_messages_lisp _master_plan_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterActionFeedback.msg" NAME_WE)
add_dependencies(master_plan_action_generate_messages_lisp _master_plan_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterAction.msg" NAME_WE)
add_dependencies(master_plan_action_generate_messages_lisp _master_plan_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterResult.msg" NAME_WE)
add_dependencies(master_plan_action_generate_messages_lisp _master_plan_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterActionResult.msg" NAME_WE)
add_dependencies(master_plan_action_generate_messages_lisp _master_plan_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterFeedback.msg" NAME_WE)
add_dependencies(master_plan_action_generate_messages_lisp _master_plan_action_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(master_plan_action_genlisp)
add_dependencies(master_plan_action_genlisp master_plan_action_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS master_plan_action_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(master_plan_action
  "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/master_plan_action
)
_generate_msg_nodejs(master_plan_action
  "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/master_plan_action
)
_generate_msg_nodejs(master_plan_action
  "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/master_plan_action
)
_generate_msg_nodejs(master_plan_action
  "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterAction.msg"
  "${MSG_I_FLAGS}"
  "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterResult.msg;/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterActionResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterFeedback.msg;/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterGoal.msg;/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterActionGoal.msg;/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterActionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/master_plan_action
)
_generate_msg_nodejs(master_plan_action
  "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/master_plan_action
)
_generate_msg_nodejs(master_plan_action
  "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/master_plan_action
)
_generate_msg_nodejs(master_plan_action
  "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/master_plan_action
)

### Generating Services

### Generating Module File
_generate_module_nodejs(master_plan_action
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/master_plan_action
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(master_plan_action_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(master_plan_action_generate_messages master_plan_action_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterGoal.msg" NAME_WE)
add_dependencies(master_plan_action_generate_messages_nodejs _master_plan_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterActionGoal.msg" NAME_WE)
add_dependencies(master_plan_action_generate_messages_nodejs _master_plan_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterActionFeedback.msg" NAME_WE)
add_dependencies(master_plan_action_generate_messages_nodejs _master_plan_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterAction.msg" NAME_WE)
add_dependencies(master_plan_action_generate_messages_nodejs _master_plan_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterResult.msg" NAME_WE)
add_dependencies(master_plan_action_generate_messages_nodejs _master_plan_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterActionResult.msg" NAME_WE)
add_dependencies(master_plan_action_generate_messages_nodejs _master_plan_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterFeedback.msg" NAME_WE)
add_dependencies(master_plan_action_generate_messages_nodejs _master_plan_action_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(master_plan_action_gennodejs)
add_dependencies(master_plan_action_gennodejs master_plan_action_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS master_plan_action_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(master_plan_action
  "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/master_plan_action
)
_generate_msg_py(master_plan_action
  "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/master_plan_action
)
_generate_msg_py(master_plan_action
  "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/master_plan_action
)
_generate_msg_py(master_plan_action
  "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterAction.msg"
  "${MSG_I_FLAGS}"
  "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterResult.msg;/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterActionResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterFeedback.msg;/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterGoal.msg;/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterActionGoal.msg;/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterActionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/master_plan_action
)
_generate_msg_py(master_plan_action
  "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/master_plan_action
)
_generate_msg_py(master_plan_action
  "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/master_plan_action
)
_generate_msg_py(master_plan_action
  "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/master_plan_action
)

### Generating Services

### Generating Module File
_generate_module_py(master_plan_action
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/master_plan_action
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(master_plan_action_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(master_plan_action_generate_messages master_plan_action_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterGoal.msg" NAME_WE)
add_dependencies(master_plan_action_generate_messages_py _master_plan_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterActionGoal.msg" NAME_WE)
add_dependencies(master_plan_action_generate_messages_py _master_plan_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterActionFeedback.msg" NAME_WE)
add_dependencies(master_plan_action_generate_messages_py _master_plan_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterAction.msg" NAME_WE)
add_dependencies(master_plan_action_generate_messages_py _master_plan_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterResult.msg" NAME_WE)
add_dependencies(master_plan_action_generate_messages_py _master_plan_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterActionResult.msg" NAME_WE)
add_dependencies(master_plan_action_generate_messages_py _master_plan_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/francesco/planning_ws/devel/share/master_plan_action/msg/masterFeedback.msg" NAME_WE)
add_dependencies(master_plan_action_generate_messages_py _master_plan_action_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(master_plan_action_genpy)
add_dependencies(master_plan_action_genpy master_plan_action_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS master_plan_action_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/master_plan_action)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/master_plan_action
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(master_plan_action_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(master_plan_action_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/master_plan_action)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/master_plan_action
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(master_plan_action_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(master_plan_action_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/master_plan_action)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/master_plan_action
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(master_plan_action_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(master_plan_action_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/master_plan_action)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/master_plan_action
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(master_plan_action_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(master_plan_action_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/master_plan_action)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/master_plan_action\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/master_plan_action
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(master_plan_action_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(master_plan_action_generate_messages_py std_msgs_generate_messages_py)
endif()
