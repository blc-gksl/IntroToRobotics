/*********************************************************************

 *********************************************************************/

/* Author:*/

#include <pluginlib/class_loader.h>
#include <ros/ros.h>

// MoveIt
#include <moveit/robot_model_loader/robot_model_loader.h>
#include <moveit/robot_model/robot_model.h>
#include <moveit/robot_state/robot_state.h>

// Moveit move robot visual
#include <moveit/move_group_interface/move_group_interface.h>
#include <moveit/planning_scene_interface/planning_scene_interface.h>
#include <moveit_msgs/CollisionObject.h>
#include <moveit_visual_tools/moveit_visual_tools.h>

int main(int argc, char** argv)
{
  //ros::init(argc, argv, "robot_model_and_robot_state_tutorial");

  ros::init(argc, argv, "robot_model_and_robot_state");

  ros::AsyncSpinner spinner(1);
  spinner.start();


  // Setting up to start using the RobotModel class is very easy. In
  // general, you will find that most higher-level components will
  // return a shared pointer to the RobotModel. You should always use
  // that when possible. In this example, we will start with such a
  // shared pointer and discuss only the basic API. You can have a
  // look at the actual code API for these classes to get more
  // information about how to use more features provided by these
  // classes.
  //
  // We will start by instantiating a
  // `RobotModelLoader`_
  // object, which will look up
  // the robot description on the ROS parameter server and construct a
  // :moveit_core:`RobotModel` for us to use.
  //
  // .. _RobotModelLoader:
  //     http://docs.ros.org/melodic/api/moveit_ros_planning/html/classrobot__model__loader_1_1RobotModelLoader.html

  // Assumes that a robot has been loaded
  // One approach is to use a launch file

  robot_model_loader::RobotModelLoader robot_model_loader("robot_description");
  robot_model::RobotModelPtr kinematic_model = robot_model_loader.getModel();
  ROS_INFO("Model frame: %s", kinematic_model->getModelFrame().c_str());

  // Using the :moveit_core:`RobotModel`, we can construct a
  // :moveit_core:`RobotState` that maintains the configuration
  // of the robot. We will set all joints in the state to their
  // default values. We can then get a
  // :moveit_core:`JointModelGroup`, which represents the robot
  // model for a particular group, e.g. the "panda_arm" of the Panda
  // robot.

  // Set the robot kinematic state
  robot_state::RobotStatePtr kinematic_state(new robot_state::RobotState(kinematic_model));

  kinematic_state->setToDefaultValues();


  //MoveIt operates on sets of joints called “planning groups” and stores them in an object called the JointModelGroup.
  //Throughout MoveIt the terms “planning group” and “joint model group” are used interchangably.
  const robot_state::JointModelGroup* joint_model_group = kinematic_model->getJointModelGroup("pr_robot");

  const std::vector<std::string>& joint_names = joint_model_group->getVariableNames();

  // Get Joint Values
  // ^^^^^^^^^^^^^^^^
  // We can retreive the current set of joint values stored in the state for the Panda arm.
  std::vector<double> joint_values;
  kinematic_state->copyJointGroupPositions(joint_model_group, joint_values);
  for (std::size_t i = 0; i < joint_names.size(); ++i)
  {
    ROS_INFO("Joint %s: %f", joint_names[i].c_str(), joint_values[i]);
  }

  // Joint Limits
  // ^^^^^^^^^^^^
  // setJointGroupPositions() does not enforce joint limits by itself, but a call to enforceBounds() will do it.
  /* Set one joint in the Panda arm outside its joint limit */
  joint_values[0] = 5.57;
  kinematic_state->setJointGroupPositions(joint_model_group, joint_values);

  /* Check whether any joint is outside its joint limits */
  ROS_INFO_STREAM("Current state is " << (kinematic_state->satisfiesBounds() ? "valid" : "not valid"));

  /* Enforce the joint limits for this state and check again*/
  kinematic_state->enforceBounds();
  ROS_INFO_STREAM("Current state is " << (kinematic_state->satisfiesBounds() ? "valid" : "not valid"));
 /*
  // Forward Kinematics
  // ^^^^^^^^^^^^^^^^^^
  // Now, we can compute forward kinematics for a set of random joint
  // values. Note that we would like to find the pose of the
  // "hand" which is the most distal link in the
  // "pr_robot" group of the robot.
  kinematic_state->setToRandomPositions(joint_model_group);

  kinematic_state->copyJointGroupPositions(joint_model_group, joint_values);

   ROS_INFO("Randomly set joints  \n");
  for (std::size_t i = 0; i < joint_names.size(); ++i)
  {
    ROS_INFO("Randomly set joint %s: %f", joint_names[i].c_str(), joint_values[i]);
  }

  const Eigen::Isometry3d& end_effector_state = kinematic_state->getGlobalLinkTransform("link2");

  /* Print end-effector pose. Remember that this is in the model frame */
  /*
  ROS_INFO_STREAM("Translation: \n" << end_effector_state.translation() << "\n");
  ROS_INFO_STREAM("Rotation: \n" << end_effector_state.rotation() << "\n");

  // Inverse Kinematics
  // ^^^^^^^^^^^^^^^^^^
  // We can now solve inverse kinematics (IK) for the Panda robot.
  // To solve IK, we will need the following:
  //
  //  * The desired pose of the end-effector (by default, this is the last link in the "panda_arm" chain):
  //    end_effector_state that we computed in the step above.
  //  * The timeout: 0.1 s
  double timeout = 0.1;
  bool found_ik = kinematic_state->setFromIK(joint_model_group, end_effector_state, timeout);

  // Now, we can print out the IK solution (if found):
  if (found_ik)
  {
    kinematic_state->copyJointGroupPositions(joint_model_group, joint_values);
    for (std::size_t i = 0; i < joint_names.size(); ++i)
    {
      ROS_INFO("Joint %s: %f", joint_names[i].c_str(), joint_values[i]);
    }
  }
  else
  {
    ROS_INFO("Did not find IK solution");
  }
 */




  // Forward Kinematics
  // ^^^^^^^^^^^^^^^^^^
  // Now, we can compute forward kinematics for a set of random joint
  // values. Note that we would like to find the pose of the
  // "link03" which is the most distal link in the
  // "group_1" group of the robot.


 // part b 1.1
	// set the joint states to set 1: d1 = 2.3, theta2 = -2
	joint_values[0] = 1.3;
	joint_values[1] = -1;
 	kinematic_state->setJointGroupPositions(joint_model_group, joint_values);

	ROS_INFO("First Set of Joints :  \n");
	ROS_INFO("d1	: %s	: %f", joint_names[0].c_str(), joint_values[0]);
	ROS_INFO("theta 2	: %s	: %f", joint_names[1].c_str(), joint_values[1]);

	// get the kinematic response of the joint set 1.

  const Eigen::Isometry3d& end_effector_state_1 = kinematic_state->getGlobalLinkTransform("hand");

  /* Print end-effector pose. Remember that this is in the model frame */
  ROS_INFO_STREAM("Translation: \n" << end_effector_state_1.translation() << "\n");
  ROS_INFO_STREAM("Rotation: \n" << end_effector_state_1.rotation() << "\n");


 // part b 2.1
	// finding the origin of the F2 represented in F0. For set 1.
	ROS_INFO("FOR SET 1\nRepresenting The Origin of Frame 2 in the Frame 0:");
	ROS_INFO_STREAM("\n" << end_effector_state_1.translation() << "\n");

 // part b 3.1

  // Inverse Kinematics
  // ^^^^^^^^^^^^^^^^^^
  // We can now solve inverse kinematics (IK) for the PR Robot.
  // To solve IK, we will need the following:
  //
  //  * The desired pose of the end-effector (by default, this is the last link in the "group_1" chain):
  //    end_effector_state that we computed in the step above.
  //  * The timeout: 0.1 s
  double timeout = 0.1;
  bool found_ik = kinematic_state->setFromIK(joint_model_group, end_effector_state_1, timeout);

  // Now, we can print out the IK solution (if found):
  if (found_ik)
  {
    kinematic_state->copyJointGroupPositions(joint_model_group, joint_values);
    for (std::size_t i = 0; i < joint_names.size(); ++i)
    {
      ROS_INFO("Joint %s: %f", joint_names[i].c_str(), joint_values[i]);
    }
  }
  else
  {
    ROS_INFO("Did not find IK solution");
  }


 // part b 1.2
	// set the joint states to set 2: d1 = 1.5, theta2 = 3.6
	joint_values[0] = 3.5;
	joint_values[1] = 3.1;
 	kinematic_state->setJointGroupPositions(joint_model_group, joint_values);

	ROS_INFO("Second Set of Joints :  \n");
	ROS_INFO("d1	: %s	: %f", joint_names[0].c_str(), joint_values[0]);
	ROS_INFO("theta 2	: %s	: %f", joint_names[1].c_str(), joint_values[1]);

	// get the kinematic response of the joint set 2.

  const Eigen::Isometry3d& end_effector_state_2 = kinematic_state->getGlobalLinkTransform("hand");

  /* Print end-effector pose. Remember that this is in the model frame */
  ROS_INFO_STREAM("Translation: \n" << end_effector_state_2.translation() << "\n");
  ROS_INFO_STREAM("Rotation: \n" << end_effector_state_2.rotation() << "\n");

 // part b 2.1
	// finding the origin of the F2 represented in F0. For set 2.
	ROS_INFO("FOR SET 2\nRepresenting The Origin of Frame 2 in the Frame 0:");
	ROS_INFO_STREAM("\n" << end_effector_state_2.translation() << "\n");

 // part b 3.1
  found_ik = kinematic_state->setFromIK(joint_model_group, end_effector_state_2, timeout);

  // Now, we can print out the IK solution (if found):
  if (found_ik)
  {
    kinematic_state->copyJointGroupPositions(joint_model_group, joint_values);
    for (std::size_t i = 0; i < joint_names.size(); ++i)
    {
      ROS_INFO("Joint %s: %f", joint_names[i].c_str(), joint_values[i]);
    }
  }
  else
  {
    ROS_INFO("Did not find IK solution");
  }


      while (true)
    {

    ros::AsyncSpinner spinner(1);
    spinner.start();

    static const std::string PLANNING_GROUP = "pr_robot";

    moveit::planning_interface::MoveGroupInterface move_group(PLANNING_GROUP);

    moveit::planning_interface::PlanningSceneInterface planning_scene_interface;

    const robot_state::JointModelGroup* joint_model_group =
            move_group.getCurrentState()->getJointModelGroup(PLANNING_GROUP);

    namespace rvt = rviz_visual_tools;
    moveit_visual_tools::MoveItVisualTools visual_tools("base_link");
    visual_tools.deleteAllMarkers();

    Eigen::Isometry3d text_pose = Eigen::Isometry3d::Identity();
    text_pose.translation().z() = 1.75;
    visual_tools.publishText(text_pose, "MoveGroupInterface Demo", rvt::WHITE, rvt::XLARGE);

    visual_tools.trigger();

    ROS_INFO_NAMED("tutorial", "Planning frame: %s", move_group.getPlanningFrame().c_str());

    ROS_INFO_NAMED("tutorial", "End effector link: %s", move_group.getEndEffectorLink().c_str());

    ROS_INFO_NAMED("tutorial", "Available Planning Groups:");
    std::copy(move_group.getJointModelGroupNames().begin(), move_group.getJointModelGroupNames().end(),
              std::ostream_iterator<std::string>(std::cout, ", "));

    moveit::planning_interface::MoveGroupInterface::Plan my_plan;

    moveit::core::RobotStatePtr current_state = move_group.getCurrentState();

    std::vector<double> joint_group_positions;
    current_state->copyJointGroupPositions(joint_model_group, joint_group_positions);

    // Now, let's modify one of the joints, plan to the new joint space goal and visualize the plan.
    joint_group_positions[0] = 1.3;  // meters, prismatic joint's goal
    joint_group_positions[1] = -1; // radian, revolute joint's goal
    move_group.setJointValueTarget(joint_group_positions);
    move_group.move();//for real movement of robot
    joint_group_positions[0] = 3.5;  // it should be re initialized
    joint_group_positions[1] = 3.1;
    move_group.setJointValueTarget(joint_group_positions);
    move_group.move();//for real movement of robot
    // Visualize the plan in RViz

    bool success = (move_group.plan(my_plan) == moveit::planning_interface::MoveItErrorCode::SUCCESS);
    ROS_INFO_NAMED("tutorial", "Visualizing plan 2 (joint space goal) %s", success ? "" : "FAILED");
    // Visualize the plan in RViz

    }













  // Get the Jacobian
  // ^^^^^^^^^^^^^^^^
  // We can also get the Jacobian from the :moveit_core:`RobotState`.
  Eigen::Vector3d reference_point_position(0.0, 0.0, 0.0);
  Eigen::MatrixXd jacobian;
  kinematic_state->getJacobian(joint_model_group,
                               kinematic_state->getLinkModel(joint_model_group->getLinkModelNames().back()),
                               reference_point_position, jacobian);
  ROS_INFO_STREAM("Jacobian: \n" << jacobian << "\n");
  // END_TUTORIAL

  ros::shutdown();
  return 0;
}
