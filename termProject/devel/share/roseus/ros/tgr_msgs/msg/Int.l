;; Auto-generated. Do not edit!


(when (boundp 'tgr_msgs::Int)
  (if (not (find-package "TGR_MSGS"))
    (make-package "TGR_MSGS"))
  (shadow 'Int (find-package "TGR_MSGS")))
(unless (find-package "TGR_MSGS::INT")
  (make-package "TGR_MSGS::INT"))

(in-package "ROS")
;;//! \htmlinclude Int.msg.html


(defclass tgr_msgs::Int
  :super ros::object
  :slots (_value ))

(defmethod tgr_msgs::Int
  (:init
   (&key
    ((:value __value) 0)
    )
   (send-super :init)
   (setq _value (round __value))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; int32 _value
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _value
       (write-long _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _value
     (setq _value (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get tgr_msgs::Int :md5sum-) "b3087778e93fcd34cc8d65bc54e850d1")
(setf (get tgr_msgs::Int :datatype-) "tgr_msgs/Int")
(setf (get tgr_msgs::Int :definition-)
      "int32 value

")



(provide :tgr_msgs/Int "b3087778e93fcd34cc8d65bc54e850d1")


