
#include <pluginlib/class_loader.h>
#include <ros/ros.h>
#include<iostream>

// MoveIt
#include <moveit_visual_tools/moveit_visual_tools.h>
#include <moveit/planning_scene_interface/planning_scene_interface.h>
#include <moveit/robot_model_loader/robot_model_loader.h>
#include <moveit/robot_model/robot_model.h>
#include <moveit/robot_state/robot_state.h>
#include <moveit/move_group_interface/move_group_interface.h>


int main(int argc, char** argv)
{
  //ros::init(argc, argv, "robot_model_node_pr3");

  ros::init(argc, argv, "robot_model_node_pr3");
    ros::NodeHandle nh;
    ros::Rate rate(50.0);
    ros::AsyncSpinner spinner(1); spinner.start();
  // One approach is to use a launch file

  robot_model_loader::RobotModelLoader robot_model_loader("robot_description");
  robot_model::RobotModelPtr kinematic_model = robot_model_loader.getModel();
  ROS_INFO("Model frame: %s", kinematic_model->getModelFrame().c_str());

  // Set the robot kinematic state
  robot_state::RobotStatePtr kinematic_state(new robot_state::RobotState(kinematic_model));

  kinematic_state->setToDefaultValues();

  const robot_state::JointModelGroup* joint_model_group = kinematic_model->getJointModelGroup("pr_robot");

  const std::vector<std::string>& joint_names = joint_model_group->getVariableNames();

    static const std::string PLANNING_GROUP = "pr_robot";

    moveit::planning_interface::MoveGroupInterface move_group(PLANNING_GROUP);

    // We will use the :planning_scene_interface:`PlanningSceneInterface`
    // class to add and remove collision objects in our "virtual world" scene
    moveit::planning_interface::PlanningSceneInterface planning_scene_interface;

    namespace rvt = rviz_visual_tools;
    moveit_visual_tools::MoveItVisualTools visual_tools("base_link");
    visual_tools.deleteAllMarkers();


    Eigen::Isometry3d text_pose = Eigen::Isometry3d::Identity();
    text_pose.translation().z() = 1.75;
    visual_tools.publishText(text_pose, "MoveGroupInterface Demo", rvt::WHITE, rvt::XLARGE);

    // Batch publishing is used to reduce the number of messages being sent to RViz for large visualizations
    visual_tools.trigger();


    std::copy(move_group.getJointModelGroupNames().begin(), move_group.getJointModelGroupNames().end(),
              std::ostream_iterator<std::string>(std::cout, ", "));

    // Project 3 main part
    // ^^^^^^^^^^^^^^^^^^^^^^^^^

    moveit::planning_interface::MoveGroupInterface::Plan my_plan;

    moveit::core::RobotStatePtr current_state = move_group.getCurrentState();
    //
    // Next get the current set of joint values for the group.
    std::vector<double> joint_group_positions;
    current_state->copyJointGroupPositions(joint_model_group, joint_group_positions);

    std::vector<double> joint_values;
    kinematic_state->copyJointGroupPositions(joint_model_group, joint_values);
    for (std::size_t i = 0; i < joint_names.size(); ++i)
    {
        ROS_INFO("Starting Joint Values %s: %f", joint_names[i].c_str(), joint_values[i]);
    }

    const Eigen::Isometry3d& end_effector_state_1 = kinematic_state->getGlobalLinkTransform("hand");

    /* Print end-effector pose. Remember that this is in the model frame */
    ROS_INFO_STREAM("Translation of initial joint states: \n" << end_effector_state_1.translation() << "\n");

    static double t = 0;
    double d_D1= 0 ;
    double d_Theta2 = 0;
    double theta2 = 0, x_position = end_effector_state_1.translation()[0], y_position = end_effector_state_1.translation()[1], z_position = end_effector_state_1.translation()[2];
    while (true)
    {
        //according to pr3 k = 600 so we choose time difference 0.01, but the to see the change in the RVIZ I set the time difference to 0.2
        const double time_difference = 0.2; 

        std::cout <<"Time: " << t << std::endl << std::endl  ;
        // Get the Jacobian
        // ^^^^^^^^^^^^^^^^
        // We can also get the Jacobian from the :moveit_core:`RobotState`.
        Eigen::Vector3d reference_point_position(0.0, 0.0, 0.0);
        Eigen::MatrixXd jacobian;

        kinematic_state->setJointGroupPositions(joint_model_group, joint_group_positions);
        kinematic_state->getJacobian(joint_model_group,
                                     kinematic_state->getLinkModel(joint_model_group->getLinkModelNames().back()),
                                     reference_point_position, jacobian);
        ROS_INFO_STREAM("Jacobian: \n" << jacobian << "\n");

        Eigen::MatrixXd velocities(6,1);
        Eigen::MatrixXd Q_derivative(2,1);
        Eigen::MatrixXd position_difference(6,1);
        Eigen::MatrixXd A(4,4);

            Q_derivative(0,0)= d_D1;
            Q_derivative(1,0)= d_Theta2;

            velocities = jacobian * Q_derivative; // for linear and angular velocity

        ROS_INFO_STREAM("Linear and Angular Velocities : \n" << velocities << "\n");
        //change in position

            position_difference = time_difference * velocities;

        ROS_INFO_STREAM("Change in position and orientation : \n" << position_difference << "\n");



        A(0,0) = cos(theta2);A(0,1) = -sin(theta2);A(0,2) = 0;A(0,3) = x_position; // Creating kinematic map
        A(1,0) = sin(theta2);A(1,1) = cos(theta2);A(1,2) = 0;A(1,3) = y_position;
        A(2,0) = 0;A(2,1) = 0;A(2,2) = 1;A(2,3) = z_position;
        A(3,0) = 0;A(3,1) = 0;A(3,2) = 0;A(3,3) = 1;

        // Sum of angle and position for update kinematic map

        x_position += position_difference(0,0);
        y_position += position_difference(1,0);
        z_position += position_difference(2,0);
        theta2 += position_difference(5,0);

        ROS_INFO_STREAM("Updated kinematic map : \n" << A << "\n");

        if(0<=t && t<=1) {
            d_D1 = 0.01 * t;
            d_Theta2 = 0.1 * t;
        }
        if(1<t && t<=5) {
            d_D1 = 0.1;
            d_Theta2 = 1;
        }
        if(5<t && t<=6) {
            d_D1 = 0.1 - 0.01 * (t - 5);
            d_Theta2 = 1 - 0.1 * (t - 5);
        }

        if(t > 6) break;

        d_D1 = d_D1 * time_difference;
        d_Theta2 = d_Theta2 * time_difference;

        //MOTION OF PR_ROBOT
        // Modifying one of the joints, plan to the new joint space goal and visualize the plan.
        joint_group_positions[0] +=  d_D1;  // meters, prismatic joint's goal
        joint_group_positions[1] += d_Theta2; // radian, revolute joint's goal
        move_group.setJointValueTarget(joint_group_positions);
        move_group.move();//for real movement of arm

        t +=time_difference; // time iteration

        ros::spinOnce();
        rate.sleep();
    }

  return 0;
}
