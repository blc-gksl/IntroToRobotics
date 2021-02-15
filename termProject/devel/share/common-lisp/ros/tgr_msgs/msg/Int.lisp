; Auto-generated. Do not edit!


(cl:in-package tgr_msgs-msg)


;//! \htmlinclude Int.msg.html

(cl:defclass <Int> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:integer
    :initform 0))
)

(cl:defclass Int (<Int>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Int>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Int)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tgr_msgs-msg:<Int> is deprecated: use tgr_msgs-msg:Int instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <Int>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tgr_msgs-msg:value-val is deprecated.  Use tgr_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Int>) ostream)
  "Serializes a message object of type '<Int>"
  (cl:let* ((signed (cl:slot-value msg 'value)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Int>) istream)
  "Deserializes a message object of type '<Int>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'value) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Int>)))
  "Returns string type for a message object of type '<Int>"
  "tgr_msgs/Int")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Int)))
  "Returns string type for a message object of type 'Int"
  "tgr_msgs/Int")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Int>)))
  "Returns md5sum for a message object of type '<Int>"
  "b3087778e93fcd34cc8d65bc54e850d1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Int)))
  "Returns md5sum for a message object of type 'Int"
  "b3087778e93fcd34cc8d65bc54e850d1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Int>)))
  "Returns full string definition for message of type '<Int>"
  (cl:format cl:nil "int32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Int)))
  "Returns full string definition for message of type 'Int"
  (cl:format cl:nil "int32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Int>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Int>))
  "Converts a ROS message object to a list"
  (cl:list 'Int
    (cl:cons ':value (value msg))
))
