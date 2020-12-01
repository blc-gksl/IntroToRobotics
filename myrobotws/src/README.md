To see the robot working in rviz with joint_state_publisher run -->
$roslaunch robot_description rviz.launch
  
To see the robot integration with moveit only run -->
$roslaunch config_pkg demo.launch rviz_tutorial:=true
  
To visualize movement of robot only run -->
$roslaunch config_pkg demo.launch rviz_tutorial:=true

on one terminal. And run -->
$rosrun moverobot move
on another terminal.
  
To visualize movement of robot between obstacles run -->
$roslaunch config_pkg demo.launch rviz_tutorial:=true

on one terminal. And run -->
$rosrun moverobotwithobject movewithobject
on another terminal.
