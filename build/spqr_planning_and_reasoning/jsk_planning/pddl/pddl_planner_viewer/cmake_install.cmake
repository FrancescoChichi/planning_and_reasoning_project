# Install script for directory: /home/francesco/planning_ws/src/spqr_planning_and_reasoning/jsk_planning/pddl/pddl_planner_viewer

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/francesco/planning_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/francesco/planning_ws/build/spqr_planning_and_reasoning/jsk_planning/pddl/pddl_planner_viewer/catkin_generated/installspace/pddl_planner_viewer.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pddl_planner_viewer/cmake" TYPE FILE FILES
    "/home/francesco/planning_ws/build/spqr_planning_and_reasoning/jsk_planning/pddl/pddl_planner_viewer/catkin_generated/installspace/pddl_planner_viewerConfig.cmake"
    "/home/francesco/planning_ws/build/spqr_planning_and_reasoning/jsk_planning/pddl/pddl_planner_viewer/catkin_generated/installspace/pddl_planner_viewerConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pddl_planner_viewer" TYPE FILE FILES "/home/francesco/planning_ws/src/spqr_planning_and_reasoning/jsk_planning/pddl/pddl_planner_viewer/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pddl_planner_viewer" TYPE DIRECTORY FILES
    "/home/francesco/planning_ws/src/spqr_planning_and_reasoning/jsk_planning/pddl/pddl_planner_viewer/sample"
    "/home/francesco/planning_ws/src/spqr_planning_and_reasoning/jsk_planning/pddl/pddl_planner_viewer/src"
    USE_SOURCE_PERMISSIONS)
endif()

