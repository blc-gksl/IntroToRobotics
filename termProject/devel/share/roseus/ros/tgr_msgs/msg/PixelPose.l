;; Auto-generated. Do not edit!


(when (boundp 'tgr_msgs::PixelPose)
  (if (not (find-package "TGR_MSGS"))
    (make-package "TGR_MSGS"))
  (shadow 'PixelPose (find-package "TGR_MSGS")))
(unless (find-package "TGR_MSGS::PIXELPOSE")
  (make-package "TGR_MSGS::PIXELPOSE"))

(in-package "ROS")
;;//! \htmlinclude PixelPose.msg.html


(defclass tgr_msgs::PixelPose
  :super ros::object
  :slots (_vertical _horizontal ))

(defmethod tgr_msgs::PixelPose
  (:init
   (&key
    ((:vertical __vertical) 0)
    ((:horizontal __horizontal) 0)
    )
   (send-super :init)
   (setq _vertical (round __vertical))
   (setq _horizontal (round __horizontal))
   self)
  (:vertical
   (&optional __vertical)
   (if __vertical (setq _vertical __vertical)) _vertical)
  (:horizontal
   (&optional __horizontal)
   (if __horizontal (setq _horizontal __horizontal)) _horizontal)
  (:serialization-length
   ()
   (+
    ;; int32 _vertical
    4
    ;; int32 _horizontal
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _vertical
       (write-long _vertical s)
     ;; int32 _horizontal
       (write-long _horizontal s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _vertical
     (setq _vertical (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _horizontal
     (setq _horizontal (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get tgr_msgs::PixelPose :md5sum-) "bd3d11edbbe650abcf221f4b7803fa7c")
(setf (get tgr_msgs::PixelPose :datatype-) "tgr_msgs/PixelPose")
(setf (get tgr_msgs::PixelPose :definition-)
      "int32 vertical
int32 horizontal
")



(provide :tgr_msgs/PixelPose "bd3d11edbbe650abcf221f4b7803fa7c")


