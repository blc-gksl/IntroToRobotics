;; Auto-generated. Do not edit!


(when (boundp 'tgr_msgs::VehicleMode)
  (if (not (find-package "TGR_MSGS"))
    (make-package "TGR_MSGS"))
  (shadow 'VehicleMode (find-package "TGR_MSGS")))
(unless (find-package "TGR_MSGS::VEHICLEMODE")
  (make-package "TGR_MSGS::VEHICLEMODE"))

(in-package "ROS")
;;//! \htmlinclude VehicleMode.msg.html


(defclass tgr_msgs::VehicleMode
  :super ros::object
  :slots (_mission _visial_guidance _obstacle_avoidance _mode ))

(defmethod tgr_msgs::VehicleMode
  (:init
   (&key
    ((:mission __mission) nil)
    ((:visial_guidance __visial_guidance) nil)
    ((:obstacle_avoidance __obstacle_avoidance) nil)
    ((:mode __mode) 0)
    )
   (send-super :init)
   (setq _mission __mission)
   (setq _visial_guidance __visial_guidance)
   (setq _obstacle_avoidance __obstacle_avoidance)
   (setq _mode (round __mode))
   self)
  (:mission
   (&optional __mission)
   (if __mission (setq _mission __mission)) _mission)
  (:visial_guidance
   (&optional __visial_guidance)
   (if __visial_guidance (setq _visial_guidance __visial_guidance)) _visial_guidance)
  (:obstacle_avoidance
   (&optional __obstacle_avoidance)
   (if __obstacle_avoidance (setq _obstacle_avoidance __obstacle_avoidance)) _obstacle_avoidance)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:serialization-length
   ()
   (+
    ;; bool _mission
    1
    ;; bool _visial_guidance
    1
    ;; bool _obstacle_avoidance
    1
    ;; int32 _mode
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _mission
       (if _mission (write-byte -1 s) (write-byte 0 s))
     ;; bool _visial_guidance
       (if _visial_guidance (write-byte -1 s) (write-byte 0 s))
     ;; bool _obstacle_avoidance
       (if _obstacle_avoidance (write-byte -1 s) (write-byte 0 s))
     ;; int32 _mode
       (write-long _mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _mission
     (setq _mission (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _visial_guidance
     (setq _visial_guidance (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _obstacle_avoidance
     (setq _obstacle_avoidance (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _mode
     (setq _mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get tgr_msgs::VehicleMode :md5sum-) "0fa27dc54e25fb913feff0e9b007f61d")
(setf (get tgr_msgs::VehicleMode :datatype-) "tgr_msgs/VehicleMode")
(setf (get tgr_msgs::VehicleMode :definition-)
      "bool mission
bool visial_guidance
bool obstacle_avoidance

int32 mode

")



(provide :tgr_msgs/VehicleMode "0fa27dc54e25fb913feff0e9b007f61d")


