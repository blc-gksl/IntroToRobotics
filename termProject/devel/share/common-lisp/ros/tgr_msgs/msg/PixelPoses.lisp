; Auto-generated. Do not edit!


(cl:in-package tgr_msgs-msg)


;//! \htmlinclude PixelPoses.msg.html

(cl:defclass <PixelPoses> (roslisp-msg-protocol:ros-message)
  ((pixel_0
    :reader pixel_0
    :initarg :pixel_0
    :type tgr_msgs-msg:PixelPose
    :initform (cl:make-instance 'tgr_msgs-msg:PixelPose))
   (pixel_1
    :reader pixel_1
    :initarg :pixel_1
    :type tgr_msgs-msg:PixelPose
    :initform (cl:make-instance 'tgr_msgs-msg:PixelPose))
   (pixel_2
    :reader pixel_2
    :initarg :pixel_2
    :type tgr_msgs-msg:PixelPose
    :initform (cl:make-instance 'tgr_msgs-msg:PixelPose)))
)

(cl:defclass PixelPoses (<PixelPoses>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PixelPoses>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PixelPoses)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tgr_msgs-msg:<PixelPoses> is deprecated: use tgr_msgs-msg:PixelPoses instead.")))

(cl:ensure-generic-function 'pixel_0-val :lambda-list '(m))
(cl:defmethod pixel_0-val ((m <PixelPoses>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tgr_msgs-msg:pixel_0-val is deprecated.  Use tgr_msgs-msg:pixel_0 instead.")
  (pixel_0 m))

(cl:ensure-generic-function 'pixel_1-val :lambda-list '(m))
(cl:defmethod pixel_1-val ((m <PixelPoses>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tgr_msgs-msg:pixel_1-val is deprecated.  Use tgr_msgs-msg:pixel_1 instead.")
  (pixel_1 m))

(cl:ensure-generic-function 'pixel_2-val :lambda-list '(m))
(cl:defmethod pixel_2-val ((m <PixelPoses>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tgr_msgs-msg:pixel_2-val is deprecated.  Use tgr_msgs-msg:pixel_2 instead.")
  (pixel_2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PixelPoses>) ostream)
  "Serializes a message object of type '<PixelPoses>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pixel_0) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pixel_1) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pixel_2) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PixelPoses>) istream)
  "Deserializes a message object of type '<PixelPoses>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pixel_0) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pixel_1) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pixel_2) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PixelPoses>)))
  "Returns string type for a message object of type '<PixelPoses>"
  "tgr_msgs/PixelPoses")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PixelPoses)))
  "Returns string type for a message object of type 'PixelPoses"
  "tgr_msgs/PixelPoses")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PixelPoses>)))
  "Returns md5sum for a message object of type '<PixelPoses>"
  "4bca10ae68cd3b2be52f35ffecd1a4b4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PixelPoses)))
  "Returns md5sum for a message object of type 'PixelPoses"
  "4bca10ae68cd3b2be52f35ffecd1a4b4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PixelPoses>)))
  "Returns full string definition for message of type '<PixelPoses>"
  (cl:format cl:nil "tgr_msgs/PixelPose pixel_0~%tgr_msgs/PixelPose pixel_1~%tgr_msgs/PixelPose pixel_2~%================================================================================~%MSG: tgr_msgs/PixelPose~%int32 vertical~%int32 horizontal~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PixelPoses)))
  "Returns full string definition for message of type 'PixelPoses"
  (cl:format cl:nil "tgr_msgs/PixelPose pixel_0~%tgr_msgs/PixelPose pixel_1~%tgr_msgs/PixelPose pixel_2~%================================================================================~%MSG: tgr_msgs/PixelPose~%int32 vertical~%int32 horizontal~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PixelPoses>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pixel_0))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pixel_1))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pixel_2))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PixelPoses>))
  "Converts a ROS message object to a list"
  (cl:list 'PixelPoses
    (cl:cons ':pixel_0 (pixel_0 msg))
    (cl:cons ':pixel_1 (pixel_1 msg))
    (cl:cons ':pixel_2 (pixel_2 msg))
))
