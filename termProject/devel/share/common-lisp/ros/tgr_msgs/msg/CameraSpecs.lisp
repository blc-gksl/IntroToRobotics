; Auto-generated. Do not edit!


(cl:in-package tgr_msgs-msg)


;//! \htmlinclude CameraSpecs.msg.html

(cl:defclass <CameraSpecs> (roslisp-msg-protocol:ros-message)
  ((vertical_resolution
    :reader vertical_resolution
    :initarg :vertical_resolution
    :type cl:integer
    :initform 0)
   (horizontal_resolution
    :reader horizontal_resolution
    :initarg :horizontal_resolution
    :type cl:integer
    :initform 0)
   (vertical_fov
    :reader vertical_fov
    :initarg :vertical_fov
    :type cl:float
    :initform 0.0)
   (horizontal_fov
    :reader horizontal_fov
    :initarg :horizontal_fov
    :type cl:float
    :initform 0.0)
   (camera_position
    :reader camera_position
    :initarg :camera_position
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (camera_orientation
    :reader camera_orientation
    :initarg :camera_orientation
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass CameraSpecs (<CameraSpecs>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CameraSpecs>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CameraSpecs)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tgr_msgs-msg:<CameraSpecs> is deprecated: use tgr_msgs-msg:CameraSpecs instead.")))

(cl:ensure-generic-function 'vertical_resolution-val :lambda-list '(m))
(cl:defmethod vertical_resolution-val ((m <CameraSpecs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tgr_msgs-msg:vertical_resolution-val is deprecated.  Use tgr_msgs-msg:vertical_resolution instead.")
  (vertical_resolution m))

(cl:ensure-generic-function 'horizontal_resolution-val :lambda-list '(m))
(cl:defmethod horizontal_resolution-val ((m <CameraSpecs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tgr_msgs-msg:horizontal_resolution-val is deprecated.  Use tgr_msgs-msg:horizontal_resolution instead.")
  (horizontal_resolution m))

(cl:ensure-generic-function 'vertical_fov-val :lambda-list '(m))
(cl:defmethod vertical_fov-val ((m <CameraSpecs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tgr_msgs-msg:vertical_fov-val is deprecated.  Use tgr_msgs-msg:vertical_fov instead.")
  (vertical_fov m))

(cl:ensure-generic-function 'horizontal_fov-val :lambda-list '(m))
(cl:defmethod horizontal_fov-val ((m <CameraSpecs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tgr_msgs-msg:horizontal_fov-val is deprecated.  Use tgr_msgs-msg:horizontal_fov instead.")
  (horizontal_fov m))

(cl:ensure-generic-function 'camera_position-val :lambda-list '(m))
(cl:defmethod camera_position-val ((m <CameraSpecs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tgr_msgs-msg:camera_position-val is deprecated.  Use tgr_msgs-msg:camera_position instead.")
  (camera_position m))

(cl:ensure-generic-function 'camera_orientation-val :lambda-list '(m))
(cl:defmethod camera_orientation-val ((m <CameraSpecs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tgr_msgs-msg:camera_orientation-val is deprecated.  Use tgr_msgs-msg:camera_orientation instead.")
  (camera_orientation m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CameraSpecs>) ostream)
  "Serializes a message object of type '<CameraSpecs>"
  (cl:let* ((signed (cl:slot-value msg 'vertical_resolution)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'horizontal_resolution)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'vertical_fov))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'horizontal_fov))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'camera_position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'camera_orientation) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CameraSpecs>) istream)
  "Deserializes a message object of type '<CameraSpecs>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'vertical_resolution) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'horizontal_resolution) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vertical_fov) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'horizontal_fov) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'camera_position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'camera_orientation) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CameraSpecs>)))
  "Returns string type for a message object of type '<CameraSpecs>"
  "tgr_msgs/CameraSpecs")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraSpecs)))
  "Returns string type for a message object of type 'CameraSpecs"
  "tgr_msgs/CameraSpecs")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CameraSpecs>)))
  "Returns md5sum for a message object of type '<CameraSpecs>"
  "68b9d8e8fe95a0178aa4b8e3061de049")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CameraSpecs)))
  "Returns md5sum for a message object of type 'CameraSpecs"
  "68b9d8e8fe95a0178aa4b8e3061de049")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CameraSpecs>)))
  "Returns full string definition for message of type '<CameraSpecs>"
  (cl:format cl:nil "int32 vertical_resolution~%int32 horizontal_resolution~%float64 vertical_fov~%float64 horizontal_fov~%geometry_msgs/Point camera_position~%geometry_msgs/Point camera_orientation~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CameraSpecs)))
  "Returns full string definition for message of type 'CameraSpecs"
  (cl:format cl:nil "int32 vertical_resolution~%int32 horizontal_resolution~%float64 vertical_fov~%float64 horizontal_fov~%geometry_msgs/Point camera_position~%geometry_msgs/Point camera_orientation~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CameraSpecs>))
  (cl:+ 0
     4
     4
     8
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'camera_position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'camera_orientation))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CameraSpecs>))
  "Converts a ROS message object to a list"
  (cl:list 'CameraSpecs
    (cl:cons ':vertical_resolution (vertical_resolution msg))
    (cl:cons ':horizontal_resolution (horizontal_resolution msg))
    (cl:cons ':vertical_fov (vertical_fov msg))
    (cl:cons ':horizontal_fov (horizontal_fov msg))
    (cl:cons ':camera_position (camera_position msg))
    (cl:cons ':camera_orientation (camera_orientation msg))
))
