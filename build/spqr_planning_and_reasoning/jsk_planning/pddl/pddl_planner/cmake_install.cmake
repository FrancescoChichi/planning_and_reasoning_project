# Install script for directory: /home/francesco/planning_ws/src/spqr_planning_and_reasoning/jsk_planning/pddl/pddl_planner

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/francesco/planning_ws/build/spqr_planning_and_reasoning/jsk_planning/pddl/pddl_planner/catkin_generated/installspace/pddl_planner.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pddl_planner/cmake" TYPE FILE FILES
    "/home/francesco/planning_ws/build/spqr_planning_and_reasoning/jsk_planning/pddl/pddl_planner/catkin_generated/installspace/pddl_plannerConfig.cmake"
    "/home/francesco/planning_ws/build/spqr_planning_and_reasoning/jsk_planning/pddl/pddl_planner/catkin_generated/installspace/pddl_plannerConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pddl_planner" TYPE FILE FILES "/home/francesco/planning_ws/src/spqr_planning_and_reasoning/jsk_planning/pddl/pddl_planner/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pddl_planner" TYPE DIRECTORY FILES
    "/home/francesco/planning_ws/src/spqr_planning_and_reasoning/jsk_planning/pddl/pddl_planner/launch"
    "/home/francesco/planning_ws/src/spqr_planning_and_reasoning/jsk_planning/pddl/pddl_planner/demos"
    "/home/francesco/planning_ws/src/spqr_planning_and_reasoning/jsk_planning/pddl/pddl_planner/src"
    "/home/francesco/planning_ws/src/spqr_planning_and_reasoning/jsk_planning/pddl/pddl_planner/samples"
    "/home/francesco/planning_ws/src/spqr_planning_and_reasoning/jsk_planning/pddl/pddl_planner/test"
    USE_SOURCE_PERMISSIONS)
endif()

