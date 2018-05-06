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
add_library(finger_plugin SHARED src/finger_plugin.cc)
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

