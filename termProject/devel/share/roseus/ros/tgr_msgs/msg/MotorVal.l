;; Auto-generated. Do not edit!


(when (boundp 'tgr_msgs::MotorVal)
  (if (not (find-package "TGR_MSGS"))
    (make-package "TGR_MSGS"))
  (shadow 'MotorVal (find-package "TGR_MSGS")))
(unless (find-package "TGR_MSGS::MOTORVAL")
  (make-package "TGR_MSGS::MOTORVAL"))

(in-package "ROS")
;;//! \htmlinclude MotorVal.msg.html


(defclass tgr_msgs::MotorVal
  :super ros::object
  :slots (_right_wheel _left_wheel ))

(defmethod tgr_msgs::MotorVal
  (:init
   (&key
    ((:right_wheel __right_wheel) 0.0)
    ((:left_wheel __left_wheel) 0.0)
    )
   (send-super :init)
   (setq _right_wheel (float __right_wheel))
   (setq _left_wheel (float __left_wheel))
   self)
  (:right_wheel
   (&optional __right_wheel)
   (if __right_wheel (setq _right_wheel __right_wheel)) _right_wheel)
  (:left_wheel
   (&optional __left_wheel)
   (if __left_wheel (setq _left_wheel __left_wheel)) _left_wheel)
  (:serialization-length
   ()
   (+
    ;; float64 _right_wheel
    8
    ;; float64 _left_wheel
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _right_wheel
       (sys::poke _right_wheel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _left_wheel
       (sys::poke _left_wheel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _right_wheel
     (setq _right_wheel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _left_wheel
     (setq _left_wheel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get tgr_msgs::MotorVal :md5sum-) "0140256f3024b29a22db1f900fae1463")
(setf (get tgr_msgs::MotorVal :datatype-) "tgr_msgs/MotorVal")
(setf (get tgr_msgs::MotorVal :definition-)
      "float64 right_wheel
float64 left_wheel

")



(provide :tgr_msgs/MotorVal "0140256f3024b29a22db1f900fae1463")


