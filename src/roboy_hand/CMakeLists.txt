cmake_minimum_required(VERSION 2.8.3)
project(roboy_hand)

set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/devel/lib)
SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11 -g")

SET(CMAKE_BUILD_TYPE Debug)

#==============================================================================
# Dependencies
#==============================================================================
find_package(catkin REQUIRED COMPONENTS
	roscpp
	rosbag
	controller_manager
	gazebo_ros_control
	std_msgs
	geometry_msgs
	roboy_communication_middleware
)

find_package(gazebo REQUIRED)
include_directories(${GAZEBO_INCLUDE_DIRS})
link_directories(${GAZEBO_LIBRARY_DIRS})
message(STATUS ${GAZEBO_INCLUDE_DIRS})

find_package(PkgConfig)

add_service_files(
  FILES
  GestureExecution.srv
  GestureMimic.srv
)

generate_messages(
  DEPENDENCIES
  std_msgs
)

catkin_package( DEPENDS GAZEBO CATKIN_DEPENDS rosbag message_runtime message_generation roboy_communication_middleware
		 INCLUDE_DIRS include
)

include_directories(
		include/
        ${catkin_INCLUDE_DIRS}
)
#==============================================================================
# Application
#==============================================================================
add_library(finger_plugin SHARED src/finger_plugin.cpp)
add_dependencies(finger_plugin roboy_communication_middleware_gencpp roboy_communication_control_gencpp)
target_link_libraries(finger_plugin ${GAZEBO_LIBRARIES} ${catkin_LIBRARIES})

#==============================================================================
# Installation
#==============================================================================
install(TARGETS
        finger_plugin
        LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
)

install(FILES
        package.xml
        finger_plugin.xml
        DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)

add_executable(gesture_execution_server src/gesture_execution_server.cpp)
target_link_libraries(gesture_execution_server ${catkin_LIBRARIES})
add_dependencies(gesture_execution_server roboy_hand_gencpp)

add_executable(gesture_mimic_server src/gesture_mimic_server.cpp)
target_link_libraries(gesture_mimic_server ${catkin_LIBRARIES})
add_dependencies(gesture_mimic_server roboy_hand_gencpp)



