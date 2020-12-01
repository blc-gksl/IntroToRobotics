cmake_minimum_required(VERSION 3.0.2)
project(moverobot)
add_compile_options(-std=c++11)
add_compile_options(-O2)
add_compile_options(-pthread)
add_compile_options(-Wall -Wextra -Wno-implicit-fallthrough)
find_package(catkin REQUIRED COMPONENTS
  moveit_ros_move_group
  moveit_fake_controller_manager
  moveit_kinematics
  moveit_planners_ompl
  moveit_ros_visualization
  moveit_setup_assistant
        moveit_msgs
        moveit_visual_tools
        joint_state_publisher
  robot_state_publisher
  tf2_ros
  xacro
  robot_description
  roscpp
  rospy
        )
catkin_package(

        CATKIN_DEPENDS roscpp
)


install(DIRECTORY launch DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
        PATTERN "setup_assistant.launch" EXCLUDE)
install(DIRECTORY config DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION})


add_library(${PROJECT_NAME}
        src/move.cpp
		)

add_executable(move src/move.cpp)
target_link_libraries(move ${catkin_LIBRARIES} ${Boost_LIBRARIES})
include_directories(${catkin_INCLUDE_DIRS})
