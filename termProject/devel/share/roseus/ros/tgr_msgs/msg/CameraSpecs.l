;; Auto-generated. Do not edit!


(when (boundp 'tgr_msgs::CameraSpecs)
  (if (not (find-package "TGR_MSGS"))
    (make-package "TGR_MSGS"))
  (shadow 'CameraSpecs (find-package "TGR_MSGS")))
(unless (find-package "TGR_MSGS::CAMERASPECS")
  (make-package "TGR_MSGS::CAMERASPECS"))

(in-package "ROS")
;;//! \htmlinclude CameraSpecs.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass tgr_msgs::CameraSpecs
  :super ros::object
  :slots (_vertical_resolution _horizontal_resolution _vertical_fov _horizontal_fov _camera_position _camera_orientation ))

(defmethod tgr_msgs::CameraSpecs
  (:init
   (&key
    ((:vertical_resolution __vertical_resolution) 0)
    ((:horizontal_resolution __horizontal_resolution) 0)
    ((:vertical_fov __vertical_fov) 0.0)
    ((:horizontal_fov __horizontal_fov) 0.0)
    ((:camera_position __camera_position) (instance geometry_msgs::Point :init))
    ((:camera_orientation __camera_orientation) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _vertical_resolution (round __vertical_resolution))
   (setq _horizontal_resolution (round __horizontal_resolution))
   (setq _vertical_fov (float __vertical_fov))
   (setq _horizontal_fov (float __horizontal_fov))
   (setq _camera_position __camera_position)
   (setq _camera_orientation __camera_orientation)
   self)
  (:vertical_resolution
   (&optional __vertical_resolution)
   (if __vertical_resolution (setq _vertical_resolution __vertical_resolution)) _vertical_resolution)
  (:horizontal_resolution
   (&optional __horizontal_resolution)
   (if __horizontal_resolution (setq _horizontal_resolution __horizontal_resolution)) _horizontal_resolution)
  (:vertical_fov
   (&optional __vertical_fov)
   (if __vertical_fov (setq _vertical_fov __vertical_fov)) _vertical_fov)
  (:horizontal_fov
   (&optional __horizontal_fov)
   (if __horizontal_fov (setq _horizontal_fov __horizontal_fov)) _horizontal_fov)
  (:camera_position
   (&rest __camera_position)
   (if (keywordp (car __camera_position))
       (send* _camera_position __camera_position)
     (progn
       (if __camera_position (setq _camera_position (car __camera_position)))
       _camera_position)))
  (:camera_orientation
   (&rest __camera_orientation)
   (if (keywordp (car __camera_orientation))
       (send* _camera_orientation __camera_orientation)
     (progn
       (if __camera_orientation (setq _camera_orientation (car __camera_orientation)))
       _camera_orientation)))
  (:serialization-length
   ()
   (+
    ;; int32 _vertical_resolution
    4
    ;; int32 _horizontal_resolution
    4
    ;; float64 _vertical_fov
    8
    ;; float64 _horizontal_fov
    8
    ;; geometry_msgs/Point _camera_position
    (send _camera_position :serialization-length)
    ;; geometry_msgs/Point _camera_orientation
    (send _camera_orientation :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _vertical_resolution
       (write-long _vertical_resolution s)
     ;; int32 _horizontal_resolution
       (write-long _horizontal_resolution s)
     ;; float64 _vertical_fov
       (sys::poke _vertical_fov (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _horizontal_fov
       (sys::poke _horizontal_fov (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/Point _camera_position
       (send _camera_position :serialize s)
     ;; geometry_msgs/Point _camera_orientation
       (send _camera_orientation :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _vertical_resolution
     (setq _vertical_resolution (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _horizontal_resolution
     (setq _horizontal_resolution (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _vertical_fov
     (setq _vertical_fov (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _horizontal_fov
     (setq _horizontal_fov (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/Point _camera_position
     (send _camera_position :deserialize buf ptr-) (incf ptr- (send _camera_position :serialization-length))
   ;; geometry_msgs/Point _camera_orientation
     (send _camera_orientation :deserialize buf ptr-) (incf ptr- (send _camera_orientation :serialization-length))
   ;;
   self)
  )

(setf (get tgr_msgs::CameraSpecs :md5sum-) "68b9d8e8fe95a0178aa4b8e3061de049")
(setf (get tgr_msgs::CameraSpecs :datatype-) "tgr_msgs/CameraSpecs")
(setf (get tgr_msgs::CameraSpecs :definition-)
      "int32 vertical_resolution
int32 horizontal_resolution
float64 vertical_fov
float64 horizontal_fov
geometry_msgs/Point camera_position
geometry_msgs/Point camera_orientation
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :tgr_msgs/CameraSpecs "68b9d8e8fe95a0178aa4b8e3061de049")


