For Project 1:

To see the robot working in rviz with joint_state_publisher run -->

    $roslaunch robot_description rviz.launch
  
To see the robot integration with moveit only run -->

    $roslaunch config_files demo.launch rviz_tutorial:=true
  
To visualize movement of robot only run -->

    $roslaunch config_files demo.launch rviz_tutorial:=true
on one terminal. And run -->

    $rosrun moverobot move
on another terminal.
  
To visualize movement of robot between obstacles run -->

    $roslaunch config_files demo.launch rviz_tutorial:=true
on one terminal. And run -->

    $rosrun moverobotwithobject movewithobject
on another terminal.









For Project 2:

To use manipulator_core directory and find kinematic and inverse kinematics run -->

    $roslaunch config_files demo.launch rviz_tutorial:=true
on one therminal and run -->

    $rosrun manipulator_core robot_model_node
on another termianl.






For Project 3:
To use manipulator_core directory and find kinematic and inverse kinematics run -->

    $roslaunch config_files demo.launch rviz_tutorial:=true
on one therminal and run -->

    $rosrun manipulator_core robot_model_node_pr3
on another terminal.


For any problem the github page can be visited [here](https://github.com/blc-gksl/IntroToRobotics/tree/master/myrobotws).
