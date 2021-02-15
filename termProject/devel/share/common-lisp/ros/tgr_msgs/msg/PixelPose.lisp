; Auto-generated. Do not edit!


(cl:in-package tgr_msgs-msg)


;//! \htmlinclude PixelPose.msg.html

(cl:defclass <PixelPose> (roslisp-msg-protocol:ros-message)
  ((vertical
    :reader vertical
    :initarg :vertical
    :type cl:integer
    :initform 0)
   (horizontal
    :reader horizontal
    :initarg :horizontal
    :type cl:integer
    :initform 0))
)

(cl:defclass PixelPose (<PixelPose>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PixelPose>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PixelPose)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tgr_msgs-msg:<PixelPose> is deprecated: use tgr_msgs-msg:PixelPose instead.")))

(cl:ensure-generic-function 'vertical-val :lambda-list '(m))
(cl:defmethod vertical-val ((m <PixelPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tgr_msgs-msg:vertical-val is deprecated.  Use tgr_msgs-msg:vertical instead.")
  (vertical m))

(cl:ensure-generic-function 'horizontal-val :lambda-list '(m))
(cl:defmethod horizontal-val ((m <PixelPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tgr_msgs-msg:horizontal-val is deprecated.  Use tgr_msgs-msg:horizontal instead.")
  (horizontal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PixelPose>) ostream)
  "Serializes a message object of type '<PixelPose>"
  (cl:let* ((signed (cl:slot-value msg 'vertical)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'horizontal)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PixelPose>) istream)
  "Deserializes a message object of type '<PixelPose>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'vertical) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'horizontal) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PixelPose>)))
  "Returns string type for a message object of type '<PixelPose>"
  "tgr_msgs/PixelPose")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PixelPose)))
  "Returns string type for a message object of type 'PixelPose"
  "tgr_msgs/PixelPose")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PixelPose>)))
  "Returns md5sum for a message object of type '<PixelPose>"
  "bd3d11edbbe650abcf221f4b7803fa7c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PixelPose)))
  "Returns md5sum for a message object of type 'PixelPose"
  "bd3d11edbbe650abcf221f4b7803fa7c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PixelPose>)))
  "Returns full string definition for message of type '<PixelPose>"
  (cl:format cl:nil "int32 vertical~%int32 horizontal~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PixelPose)))
  "Returns full string definition for message of type 'PixelPose"
  (cl:format cl:nil "int32 vertical~%int32 horizontal~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PixelPose>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PixelPose>))
  "Converts a ROS message object to a list"
  (cl:list 'PixelPose
    (cl:cons ':vertical (vertical msg))
    (cl:cons ':horizontal (horizontal msg))
))
