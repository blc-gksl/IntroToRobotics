;; Auto-generated. Do not edit!


(when (boundp 'tgr_msgs::PixelPoses)
  (if (not (find-package "TGR_MSGS"))
    (make-package "TGR_MSGS"))
  (shadow 'PixelPoses (find-package "TGR_MSGS")))
(unless (find-package "TGR_MSGS::PIXELPOSES")
  (make-package "TGR_MSGS::PIXELPOSES"))

(in-package "ROS")
;;//! \htmlinclude PixelPoses.msg.html


(defclass tgr_msgs::PixelPoses
  :super ros::object
  :slots (_pixel_0 _pixel_1 _pixel_2 ))

(defmethod tgr_msgs::PixelPoses
  (:init
   (&key
    ((:pixel_0 __pixel_0) (instance tgr_msgs::PixelPose :init))
    ((:pixel_1 __pixel_1) (instance tgr_msgs::PixelPose :init))
    ((:pixel_2 __pixel_2) (instance tgr_msgs::PixelPose :init))
    )
   (send-super :init)
   (setq _pixel_0 __pixel_0)
   (setq _pixel_1 __pixel_1)
   (setq _pixel_2 __pixel_2)
   self)
  (:pixel_0
   (&rest __pixel_0)
   (if (keywordp (car __pixel_0))
       (send* _pixel_0 __pixel_0)
     (progn
       (if __pixel_0 (setq _pixel_0 (car __pixel_0)))
       _pixel_0)))
  (:pixel_1
   (&rest __pixel_1)
   (if (keywordp (car __pixel_1))
       (send* _pixel_1 __pixel_1)
     (progn
       (if __pixel_1 (setq _pixel_1 (car __pixel_1)))
       _pixel_1)))
  (:pixel_2
   (&rest __pixel_2)
   (if (keywordp (car __pixel_2))
       (send* _pixel_2 __pixel_2)
     (progn
       (if __pixel_2 (setq _pixel_2 (car __pixel_2)))
       _pixel_2)))
  (:serialization-length
   ()
   (+
    ;; tgr_msgs/PixelPose _pixel_0
    (send _pixel_0 :serialization-length)
    ;; tgr_msgs/PixelPose _pixel_1
    (send _pixel_1 :serialization-length)
    ;; tgr_msgs/PixelPose _pixel_2
    (send _pixel_2 :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; tgr_msgs/PixelPose _pixel_0
       (send _pixel_0 :serialize s)
     ;; tgr_msgs/PixelPose _pixel_1
       (send _pixel_1 :serialize s)
     ;; tgr_msgs/PixelPose _pixel_2
       (send _pixel_2 :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; tgr_msgs/PixelPose _pixel_0
     (send _pixel_0 :deserialize buf ptr-) (incf ptr- (send _pixel_0 :serialization-length))
   ;; tgr_msgs/PixelPose _pixel_1
     (send _pixel_1 :deserialize buf ptr-) (incf ptr- (send _pixel_1 :serialization-length))
   ;; tgr_msgs/PixelPose _pixel_2
     (send _pixel_2 :deserialize buf ptr-) (incf ptr- (send _pixel_2 :serialization-length))
   ;;
   self)
  )

(setf (get tgr_msgs::PixelPoses :md5sum-) "4bca10ae68cd3b2be52f35ffecd1a4b4")
(setf (get tgr_msgs::PixelPoses :datatype-) "tgr_msgs/PixelPoses")
(setf (get tgr_msgs::PixelPoses :definition-)
      "tgr_msgs/PixelPose pixel_0
tgr_msgs/PixelPose pixel_1
tgr_msgs/PixelPose pixel_2
================================================================================
MSG: tgr_msgs/PixelPose
int32 vertical
int32 horizontal
")



(provide :tgr_msgs/PixelPoses "4bca10ae68cd3b2be52f35ffecd1a4b4")


