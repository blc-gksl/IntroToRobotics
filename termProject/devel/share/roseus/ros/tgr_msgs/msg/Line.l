;; Auto-generated. Do not edit!


(when (boundp 'tgr_msgs::Line)
  (if (not (find-package "TGR_MSGS"))
    (make-package "TGR_MSGS"))
  (shadow 'Line (find-package "TGR_MSGS")))
(unless (find-package "TGR_MSGS::LINE")
  (make-package "TGR_MSGS::LINE"))

(in-package "ROS")
;;//! \htmlinclude Line.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass tgr_msgs::Line
  :super ros::object
  :slots (_point_begin _point_end ))

(defmethod tgr_msgs::Line
  (:init
   (&key
    ((:point_begin __point_begin) (instance geometry_msgs::Point :init))
    ((:point_end __point_end) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _point_begin __point_begin)
   (setq _point_end __point_end)
   self)
  (:point_begin
   (&rest __point_begin)
   (if (keywordp (car __point_begin))
       (send* _point_begin __point_begin)
     (progn
       (if __point_begin (setq _point_begin (car __point_begin)))
       _point_begin)))
  (:point_end
   (&rest __point_end)
   (if (keywordp (car __point_end))
       (send* _point_end __point_end)
     (progn
       (if __point_end (setq _point_end (car __point_end)))
       _point_end)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _point_begin
    (send _point_begin :serialization-length)
    ;; geometry_msgs/Point _point_end
    (send _point_end :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _point_begin
       (send _point_begin :serialize s)
     ;; geometry_msgs/Point _point_end
       (send _point_end :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _point_begin
     (send _point_begin :deserialize buf ptr-) (incf ptr- (send _point_begin :serialization-length))
   ;; geometry_msgs/Point _point_end
     (send _point_end :deserialize buf ptr-) (incf ptr- (send _point_end :serialization-length))
   ;;
   self)
  )

(setf (get tgr_msgs::Line :md5sum-) "dc31879070f0eee41b7cce1d12323475")
(setf (get tgr_msgs::Line :datatype-) "tgr_msgs/Line")
(setf (get tgr_msgs::Line :definition-)
      "geometry_msgs/Point point_begin
geometry_msgs/Point point_end

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :tgr_msgs/Line "dc31879070f0eee41b7cce1d12323475")


