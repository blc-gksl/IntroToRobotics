# For Project 1:

## Part - 1
To see the robot working in rviz with joint_state_publisher run -->

    $roslaunch robot_description rviz.launch
  
## Part - 2
To see the robot integration with moveit only run -->

    $roslaunch config_files demo.launch rviz_tutorial:=true
  
## Part - 3
To visualize movement of robot only run -->

    $roslaunch config_files demo.launch rviz_tutorial:=true
on one terminal. And run -->

    $rosrun moverobot move
on another terminal.

## Part - 4
To visualize movement of robot between obstacles run -->

    $roslaunch config_files demo.launch rviz_tutorial:=true
on one terminal. And run -->

    $rosrun moverobotwithobject movewithobject
on another terminal.

# For Project 2:

## Part - 1
To use manipulator_core directory and find kinematic and inverse kinematics run -->

    $roslaunch config_files demo.launch rviz_tutorial:=true
on one therminal and run -->

    $rosrun manipulator_core robot_model_node
on another termianl.

# For Project 3:
## Part - 1
To use manipulator_core directory and find jacobian and move the pr_robot with a time parameter run -->

    $roslaunch config_files demo.launch rviz_tutorial:=true
on one therminal and run -->

    $rosrun manipulator_core robot_model_node_pr3
on another terminal.

# For any problem the github page can be visited [here](https://github.com/blc-gksl/IntroToRobotics/tree/master/myrobotws).
