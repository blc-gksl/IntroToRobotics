; Auto-generated. Do not edit!


(cl:in-package tgr_msgs-msg)


;//! \htmlinclude VehicleMode.msg.html

(cl:defclass <VehicleMode> (roslisp-msg-protocol:ros-message)
  ((mission
    :reader mission
    :initarg :mission
    :type cl:boolean
    :initform cl:nil)
   (visial_guidance
    :reader visial_guidance
    :initarg :visial_guidance
    :type cl:boolean
    :initform cl:nil)
   (obstacle_avoidance
    :reader obstacle_avoidance
    :initarg :obstacle_avoidance
    :type cl:boolean
    :initform cl:nil)
   (mode
    :reader mode
    :initarg :mode
    :type cl:integer
    :initform 0))
)

(cl:defclass VehicleMode (<VehicleMode>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehicleMode>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehicleMode)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tgr_msgs-msg:<VehicleMode> is deprecated: use tgr_msgs-msg:VehicleMode instead.")))

(cl:ensure-generic-function 'mission-val :lambda-list '(m))
(cl:defmethod mission-val ((m <VehicleMode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tgr_msgs-msg:mission-val is deprecated.  Use tgr_msgs-msg:mission instead.")
  (mission m))

(cl:ensure-generic-function 'visial_guidance-val :lambda-list '(m))
(cl:defmethod visial_guidance-val ((m <VehicleMode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tgr_msgs-msg:visial_guidance-val is deprecated.  Use tgr_msgs-msg:visial_guidance instead.")
  (visial_guidance m))

(cl:ensure-generic-function 'obstacle_avoidance-val :lambda-list '(m))
(cl:defmethod obstacle_avoidance-val ((m <VehicleMode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tgr_msgs-msg:obstacle_avoidance-val is deprecated.  Use tgr_msgs-msg:obstacle_avoidance instead.")
  (obstacle_avoidance m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <VehicleMode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tgr_msgs-msg:mode-val is deprecated.  Use tgr_msgs-msg:mode instead.")
  (mode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehicleMode>) ostream)
  "Serializes a message object of type '<VehicleMode>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'mission) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'visial_guidance) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'obstacle_avoidance) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehicleMode>) istream)
  "Deserializes a message object of type '<VehicleMode>"
    (cl:setf (cl:slot-value msg 'mission) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'visial_guidance) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'obstacle_avoidance) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehicleMode>)))
  "Returns string type for a message object of type '<VehicleMode>"
  "tgr_msgs/VehicleMode")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleMode)))
  "Returns string type for a message object of type 'VehicleMode"
  "tgr_msgs/VehicleMode")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehicleMode>)))
  "Returns md5sum for a message object of type '<VehicleMode>"
  "0fa27dc54e25fb913feff0e9b007f61d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehicleMode)))
  "Returns md5sum for a message object of type 'VehicleMode"
  "0fa27dc54e25fb913feff0e9b007f61d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehicleMode>)))
  "Returns full string definition for message of type '<VehicleMode>"
  (cl:format cl:nil "bool mission~%bool visial_guidance~%bool obstacle_avoidance~%~%int32 mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehicleMode)))
  "Returns full string definition for message of type 'VehicleMode"
  (cl:format cl:nil "bool mission~%bool visial_guidance~%bool obstacle_avoidance~%~%int32 mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehicleMode>))
  (cl:+ 0
     1
     1
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehicleMode>))
  "Converts a ROS message object to a list"
  (cl:list 'VehicleMode
    (cl:cons ':mission (mission msg))
    (cl:cons ':visial_guidance (visial_guidance msg))
    (cl:cons ':obstacle_avoidance (obstacle_avoidance msg))
    (cl:cons ':mode (mode msg))
))
