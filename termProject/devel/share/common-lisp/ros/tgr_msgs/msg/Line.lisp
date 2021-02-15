; Auto-generated. Do not edit!


(cl:in-package tgr_msgs-msg)


;//! \htmlinclude Line.msg.html

(cl:defclass <Line> (roslisp-msg-protocol:ros-message)
  ((point_begin
    :reader point_begin
    :initarg :point_begin
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (point_end
    :reader point_end
    :initarg :point_end
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass Line (<Line>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Line>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Line)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tgr_msgs-msg:<Line> is deprecated: use tgr_msgs-msg:Line instead.")))

(cl:ensure-generic-function 'point_begin-val :lambda-list '(m))
(cl:defmethod point_begin-val ((m <Line>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tgr_msgs-msg:point_begin-val is deprecated.  Use tgr_msgs-msg:point_begin instead.")
  (point_begin m))

(cl:ensure-generic-function 'point_end-val :lambda-list '(m))
(cl:defmethod point_end-val ((m <Line>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tgr_msgs-msg:point_end-val is deprecated.  Use tgr_msgs-msg:point_end instead.")
  (point_end m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Line>) ostream)
  "Serializes a message object of type '<Line>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'point_begin) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'point_end) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Line>) istream)
  "Deserializes a message object of type '<Line>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'point_begin) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'point_end) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Line>)))
  "Returns string type for a message object of type '<Line>"
  "tgr_msgs/Line")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Line)))
  "Returns string type for a message object of type 'Line"
  "tgr_msgs/Line")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Line>)))
  "Returns md5sum for a message object of type '<Line>"
  "dc31879070f0eee41b7cce1d12323475")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Line)))
  "Returns md5sum for a message object of type 'Line"
  "dc31879070f0eee41b7cce1d12323475")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Line>)))
  "Returns full string definition for message of type '<Line>"
  (cl:format cl:nil "geometry_msgs/Point point_begin~%geometry_msgs/Point point_end~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Line)))
  "Returns full string definition for message of type 'Line"
  (cl:format cl:nil "geometry_msgs/Point point_begin~%geometry_msgs/Point point_end~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Line>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'point_begin))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'point_end))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Line>))
  "Converts a ROS message object to a list"
  (cl:list 'Line
    (cl:cons ':point_begin (point_begin msg))
    (cl:cons ':point_end (point_end msg))
))
