# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "location_service: 1 messages, 3 services")

set(MSG_I_FLAGS "-Ilocation_service:/home/francesco/planning_ws/src/location_service/msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(location_service_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/francesco/planning_ws/src/location_service/srv/GetLocation.srv" NAME_WE)
add_custom_target(_location_service_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "location_service" "/home/francesco/planning_ws/src/location_service/srv/GetLocation.srv" "std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Point:sensor_msgs/LaserScan:location_service/Location:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/francesco/planning_ws/src/location_service/msg/Location.msg" NAME_WE)
add_custom_target(_location_service_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "location_service" "/home/francesco/planning_ws/src/location_service/msg/Location.msg" "std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point:sensor_msgs/LaserScan"
)

get_filename_component(_filename "/home/francesco/planning_ws/src/location_service/srv/DeleteLocation.srv" NAME_WE)
add_custom_target(_location_service_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "location_service" "/home/francesco/planning_ws/src/location_service/srv/DeleteLocation.srv" ""
)

get_filename_component(_filename "/home/francesco/planning_ws/src/location_service/srv/StoreLocation.srv" NAME_WE)
add_custom_target(_location_service_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "location_service" "/home/francesco/planning_ws/src/location_service/srv/StoreLocation.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(location_service
  "/home/francesco/planning_ws/src/location_service/msg/Location.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/LaserScan.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/location_service
)

### Generating Services
_generate_srv_cpp(location_service
  "/home/francesco/planning_ws/src/location_service/srv/GetLocation.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/LaserScan.msg;/home/francesco/planning_ws/src/location_service/msg/Location.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/location_service
)
_generate_srv_cpp(location_service
  "/home/francesco/planning_ws/src/location_service/srv/StoreLocation.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/location_service
)
_generate_srv_cpp(location_service
  "/home/francesco/planning_ws/src/location_service/srv/DeleteLocation.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/location_service
)

### Generating Module File
_generate_module_cpp(location_service
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/location_service
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(location_service_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(location_service_generate_messages location_service_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/francesco/planning_ws/src/location_service/srv/GetLocation.srv" NAME_WE)
add_dependencies(location_service_generate_messages_cpp _location_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/francesco/planning_ws/src/location_service/msg/Location.msg" NAME_WE)
add_dependencies(location_service_generate_messages_cpp _location_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/francesco/planning_ws/src/location_service/srv/DeleteLocation.srv" NAME_WE)
add_dependencies(location_service_generate_messages_cpp _location_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/francesco/planning_ws/src/location_service/srv/StoreLocation.srv" NAME_WE)
add_dependencies(location_service_generate_messages_cpp _location_service_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(location_service_gencpp)
add_dependencies(location_service_gencpp location_service_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS location_service_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(location_service
  "/home/francesco/planning_ws/src/location_service/msg/Location.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/LaserScan.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/location_service
)

### Generating Services
_generate_srv_eus(location_service
  "/home/francesco/planning_ws/src/location_service/srv/GetLocation.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/LaserScan.msg;/home/francesco/planning_ws/src/location_service/msg/Location.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/location_service
)
_generate_srv_eus(location_service
  "/home/francesco/planning_ws/src/location_service/srv/StoreLocation.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/location_service
)
_generate_srv_eus(location_service
  "/home/francesco/planning_ws/src/location_service/srv/DeleteLocation.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/location_service
)

### Generating Module File
_generate_module_eus(location_service
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/location_service
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(location_service_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(location_service_generate_messages location_service_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/francesco/planning_ws/src/location_service/srv/GetLocation.srv" NAME_WE)
add_dependencies(location_service_generate_messages_eus _location_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/francesco/planning_ws/src/location_service/msg/Location.msg" NAME_WE)
add_dependencies(location_service_generate_messages_eus _location_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/francesco/planning_ws/src/location_service/srv/DeleteLocation.srv" NAME_WE)
add_dependencies(location_service_generate_messages_eus _location_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/francesco/planning_ws/src/location_service/srv/StoreLocation.srv" NAME_WE)
add_dependencies(location_service_generate_messages_eus _location_service_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(location_service_geneus)
add_dependencies(location_service_geneus location_service_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS location_service_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(location_service
  "/home/francesco/planning_ws/src/location_service/msg/Location.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/LaserScan.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/location_service
)

### Generating Services
_generate_srv_lisp(location_service
  "/home/francesco/planning_ws/src/location_service/srv/GetLocation.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/LaserScan.msg;/home/francesco/planning_ws/src/location_service/msg/Location.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/location_service
)
_generate_srv_lisp(location_service
  "/home/francesco/planning_ws/src/location_service/srv/StoreLocation.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/location_service
)
_generate_srv_lisp(location_service
  "/home/francesco/planning_ws/src/location_service/srv/DeleteLocation.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/location_service
)

### Generating Module File
_generate_module_lisp(location_service
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/location_service
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(location_service_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(location_service_generate_messages location_service_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/francesco/planning_ws/src/location_service/srv/GetLocation.srv" NAME_WE)
add_dependencies(location_service_generate_messages_lisp _location_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/francesco/planning_ws/src/location_service/msg/Location.msg" NAME_WE)
add_dependencies(location_service_generate_messages_lisp _location_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/francesco/planning_ws/src/location_service/srv/DeleteLocation.srv" NAME_WE)
add_dependencies(location_service_generate_messages_lisp _location_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/francesco/planning_ws/src/location_service/srv/StoreLocation.srv" NAME_WE)
add_dependencies(location_service_generate_messages_lisp _location_service_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(location_service_genlisp)
add_dependencies(location_service_genlisp location_service_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS location_service_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(location_service
  "/home/francesco/planning_ws/src/location_service/msg/Location.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/LaserScan.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/location_service
)

### Generating Services
_generate_srv_nodejs(location_service
  "/home/francesco/planning_ws/src/location_service/srv/GetLocation.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/LaserScan.msg;/home/francesco/planning_ws/src/location_service/msg/Location.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/location_service
)
_generate_srv_nodejs(location_service
  "/home/francesco/planning_ws/src/location_service/srv/StoreLocation.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/location_service
)
_generate_srv_nodejs(location_service
  "/home/francesco/planning_ws/src/location_service/srv/DeleteLocation.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/location_service
)

### Generating Module File
_generate_module_nodejs(location_service
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/location_service
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(location_service_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(location_service_generate_messages location_service_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/francesco/planning_ws/src/location_service/srv/GetLocation.srv" NAME_WE)
add_dependencies(location_service_generate_messages_nodejs _location_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/francesco/planning_ws/src/location_service/msg/Location.msg" NAME_WE)
add_dependencies(location_service_generate_messages_nodejs _location_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/francesco/planning_ws/src/location_service/srv/DeleteLocation.srv" NAME_WE)
add_dependencies(location_service_generate_messages_nodejs _location_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/francesco/planning_ws/src/location_service/srv/StoreLocation.srv" NAME_WE)
add_dependencies(location_service_generate_messages_nodejs _location_service_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(location_service_gennodejs)
add_dependencies(location_service_gennodejs location_service_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS location_service_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(location_service
  "/home/francesco/planning_ws/src/location_service/msg/Location.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/LaserScan.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/location_service
)

### Generating Services
_generate_srv_py(location_service
  "/home/francesco/planning_ws/src/location_service/srv/GetLocation.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/LaserScan.msg;/home/francesco/planning_ws/src/location_service/msg/Location.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/location_service
)
_generate_srv_py(location_service
  "/home/francesco/planning_ws/src/location_service/srv/StoreLocation.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/location_service
)
_generate_srv_py(location_service
  "/home/francesco/planning_ws/src/location_service/srv/DeleteLocation.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/location_service
)

### Generating Module File
_generate_module_py(location_service
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/location_service
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(location_service_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(location_service_generate_messages location_service_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/francesco/planning_ws/src/location_service/srv/GetLocation.srv" NAME_WE)
add_dependencies(location_service_generate_messages_py _location_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/francesco/planning_ws/src/location_service/msg/Location.msg" NAME_WE)
add_dependencies(location_service_generate_messages_py _location_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/francesco/planning_ws/src/location_service/srv/DeleteLocation.srv" NAME_WE)
add_dependencies(location_service_generate_messages_py _location_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/francesco/planning_ws/src/location_service/srv/StoreLocation.srv" NAME_WE)
add_dependencies(location_service_generate_messages_py _location_service_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(location_service_genpy)
add_dependencies(location_service_genpy location_service_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS location_service_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/location_service)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/location_service
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(location_service_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(location_service_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/location_service)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/location_service
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(location_service_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(location_service_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/location_service)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/location_service
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(location_service_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(location_service_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/location_service)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/location_service
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(location_service_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(location_service_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/location_service)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/location_service\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/location_service
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(location_service_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(location_service_generate_messages_py sensor_msgs_generate_messages_py)
endif()
