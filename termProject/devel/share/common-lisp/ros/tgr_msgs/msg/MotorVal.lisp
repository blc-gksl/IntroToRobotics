; Auto-generated. Do not edit!


(cl:in-package tgr_msgs-msg)


;//! \htmlinclude MotorVal.msg.html

(cl:defclass <MotorVal> (roslisp-msg-protocol:ros-message)
  ((right_wheel
    :reader right_wheel
    :initarg :right_wheel
    :type cl:float
    :initform 0.0)
   (left_wheel
    :reader left_wheel
    :initarg :left_wheel
    :type cl:float
    :initform 0.0))
)

(cl:defclass MotorVal (<MotorVal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MotorVal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MotorVal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tgr_msgs-msg:<MotorVal> is deprecated: use tgr_msgs-msg:MotorVal instead.")))

(cl:ensure-generic-function 'right_wheel-val :lambda-list '(m))
(cl:defmethod right_wheel-val ((m <MotorVal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tgr_msgs-msg:right_wheel-val is deprecated.  Use tgr_msgs-msg:right_wheel instead.")
  (right_wheel m))

(cl:ensure-generic-function 'left_wheel-val :lambda-list '(m))
(cl:defmethod left_wheel-val ((m <MotorVal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tgr_msgs-msg:left_wheel-val is deprecated.  Use tgr_msgs-msg:left_wheel instead.")
  (left_wheel m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MotorVal>) ostream)
  "Serializes a message object of type '<MotorVal>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'right_wheel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'left_wheel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MotorVal>) istream)
  "Deserializes a message object of type '<MotorVal>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'right_wheel) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'left_wheel) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MotorVal>)))
  "Returns string type for a message object of type '<MotorVal>"
  "tgr_msgs/MotorVal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MotorVal)))
  "Returns string type for a message object of type 'MotorVal"
  "tgr_msgs/MotorVal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MotorVal>)))
  "Returns md5sum for a message object of type '<MotorVal>"
  "0140256f3024b29a22db1f900fae1463")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MotorVal)))
  "Returns md5sum for a message object of type 'MotorVal"
  "0140256f3024b29a22db1f900fae1463")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MotorVal>)))
  "Returns full string definition for message of type '<MotorVal>"
  (cl:format cl:nil "float64 right_wheel~%float64 left_wheel~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MotorVal)))
  "Returns full string definition for message of type 'MotorVal"
  (cl:format cl:nil "float64 right_wheel~%float64 left_wheel~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MotorVal>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MotorVal>))
  "Converts a ROS message object to a list"
  (cl:list 'MotorVal
    (cl:cons ':right_wheel (right_wheel msg))
    (cl:cons ':left_wheel (left_wheel msg))
))
