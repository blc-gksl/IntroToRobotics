#include <moveit/move_group_interface/move_group_interface.h>
#include <moveit/planning_scene_interface/planning_scene_interface.h>

#include <moveit_msgs/DisplayRobotState.h>
#include <moveit_msgs/DisplayTrajectory.h>

#include <moveit_msgs/AttachedCollisionObject.h>
#include <moveit_msgs/CollisionObject.h>

#include <moveit_visual_tools/moveit_visual_tools.h>

int main(int argc, char** argv)
{
    ros::init(argc, argv, "movewithobject");
    ros::NodeHandle node_handle;
    while (true) //for continuous loop in visualizer
    {


    ros::AsyncSpinner spinner(1);
    spinner.start();

    static const std::string PLANNING_GROUP = "pr_robot"; //my planning group in setup

    // The :move_group_interface:`MoveGroupInterface` class can be easily
    // setup using just the name of the planning group you would like to control and plan for.
    moveit::planning_interface::MoveGroupInterface move_group(PLANNING_GROUP);

    // We will use the :planning_scene_interface:`PlanningSceneInterface`
    // class to add and remove collision objects in our "virtual world" scene
    moveit::planning_interface::PlanningSceneInterface planning_scene_interface;

    // Raw pointers are frequently used to refer to the planning group for improved performance.
    const robot_state::JointModelGroup* joint_model_group =
            move_group.getCurrentState()->getJointModelGroup(PLANNING_GROUP);

    // Visualization
    // ^^^^^^^^^^^^^
    //
    // The package MoveItVisualTools provides many capabilties for visualizing objects, robots,
    // and trajectories in RViz as well as debugging tools such as step-by-step introspection of a script
    namespace rvt = rviz_visual_tools;
    moveit_visual_tools::MoveItVisualTools visual_tools("base_link");
    visual_tools.deleteAllMarkers();

    // Remote control is an introspection tool that allows users to step through a high level script
    // via buttons and keyboard shortcuts in RViz
    visual_tools.loadRemoteControl();

    // RViz provides many types of markers, in this demo we will use text, cylinders, and spheres
    Eigen::Isometry3d text_pose = Eigen::Isometry3d::Identity();
    text_pose.translation().z() = 1.75;
    visual_tools.publishText(text_pose, "MoveGroupInterface Demo", rvt::WHITE, rvt::XLARGE);

    // Batch publishing is used to reduce the number of messages being sent to RViz for large visualizations
    visual_tools.trigger();

    // Getting Basic Information
    // ^^^^^^^^^^^^^^^^^^^^^^^^^
    //
    // We can print the name of the reference frame for this robot.
    ROS_INFO_NAMED("tutorial", "Planning frame: %s", move_group.getPlanningFrame().c_str());

    // We can also print the name of the end-effector link for this group.
    ROS_INFO_NAMED("tutorial", "End effector link: %s", move_group.getEndEffectorLink().c_str());

    // We can get a list of all the groups in the robot:
    ROS_INFO_NAMED("tutorial", "Available Planning Groups:");
    std::copy(move_group.getJointModelGroupNames().begin(), move_group.getJointModelGroupNames().end(),
              std::ostream_iterator<std::string>(std::cout, ", "));

    // Start the demo
    // ^^^^^^^^^^^^^^^^^^^^^^^^^

    moveit::planning_interface::MoveGroupInterface::Plan my_plan;


        moveit_msgs::CollisionObject collision_object; // it is thebox
        collision_object.header.frame_id = move_group.getPlanningFrame();
        collision_object.id = "thebox";

        shape_msgs::SolidPrimitive primitive; //thebox's dimensions
        primitive.type = primitive.BOX;
        primitive.dimensions.resize(3);
        primitive.dimensions[0] = 2.0;
        primitive.dimensions[1] = 2.0;
        primitive.dimensions[2] = 2.5;

        geometry_msgs::Pose box_pose; // position of thebox
        box_pose.orientation.w = 1.0;
        box_pose.position.x = 2.0;
        box_pose.position.y = 0.0;
        box_pose.position.z = 8.0;

        collision_object.primitives.push_back(primitive);
        collision_object.primitive_poses.push_back(box_pose);
        collision_object.operation = collision_object.ADD;

        std::vector<moveit_msgs::CollisionObject> collision_objects;
        collision_objects.push_back(collision_object);
        ROS_INFO_NAMED("tutorial", "Add an object into the world");
        planning_scene_interface.addCollisionObjects(collision_objects);
        visual_tools.publishText(text_pose, "Add object", rvt::WHITE, rvt::XLARGE);
        visual_tools.trigger();

        moveit_msgs::CollisionObject collision_object2; //for thecylinder created object
        collision_object2.header.frame_id = move_group.getPlanningFrame();
        collision_object2.id = "thecylinder";

        shape_msgs::SolidPrimitive primitive2; //dimesions
        primitive2.type = primitive2.CYLINDER;
        primitive2.dimensions.resize(2);
        primitive2.dimensions[0] = 2.5;
        primitive2.dimensions[1] = 1.0;

        geometry_msgs::Pose thecylinderpose; // position of thecylinder
        thecylinderpose.orientation.w = 1.0;
        thecylinderpose.position.x = -2.0;
        thecylinderpose.position.y = -1.0;
        thecylinderpose.position.z = 8.3;

        collision_object2.primitives.push_back(primitive2);
        collision_object2.primitive_poses.push_back(thecylinderpose);
        collision_object2.operation = collision_object2.ADD;

        std::vector<moveit_msgs::CollisionObject> collision_objects2;
        collision_objects2.push_back(collision_object2);
        ROS_INFO_NAMED("tutorial", "Add an object into the world");
        planning_scene_interface.addCollisionObjects(collision_objects2);
        visual_tools.publishText(text_pose, "Add object", rvt::WHITE, rvt::XLARGE);
        visual_tools.trigger();
        moveit::core::RobotStatePtr current_state = move_group.getCurrentState();
    //
    // Next get the current set of joint values for the group.
    std::vector<double> joint_group_positions;
    current_state->copyJointGroupPositions(joint_model_group, joint_group_positions);

    // Now, let's modify one of the joints, plan to the new joint space goal and visualize the plan.
    joint_group_positions[0] = 4.0;  // meters, joints position goal
    joint_group_positions[1] = 3.14; // radians, joint's degree goal
    move_group.setJointValueTarget(joint_group_positions);
    move_group.move(); //for real movement of arm
    joint_group_positions[0] = 0.0;  // it is in loop so i reinitialized it in 0,-3.14rad
    joint_group_positions[1] = 0.0;
    move_group.setJointValueTarget(joint_group_positions);
    move_group.move(); //for real movement of arm

    bool success = (move_group.plan(my_plan) == moveit::planning_interface::MoveItErrorCode::SUCCESS); // if plan success
    ROS_INFO_NAMED("tutorial", "Visualizing plan 2 (joint space goal) %s", success ? "" : "FAILED");
    // Visualize the plan in RViz

    }
    return 0;
}
