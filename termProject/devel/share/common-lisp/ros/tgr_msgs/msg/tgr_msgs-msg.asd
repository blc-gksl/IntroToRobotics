
(cl:in-package :asdf)

(defsystem "tgr_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "CameraSpecs" :depends-on ("_package_CameraSpecs"))
    (:file "_package_CameraSpecs" :depends-on ("_package"))
    (:file "Int" :depends-on ("_package_Int"))
    (:file "_package_Int" :depends-on ("_package"))
    (:file "Line" :depends-on ("_package_Line"))
    (:file "_package_Line" :depends-on ("_package"))
    (:file "MotorVal" :depends-on ("_package_MotorVal"))
    (:file "_package_MotorVal" :depends-on ("_package"))
    (:file "PixelPose" :depends-on ("_package_PixelPose"))
    (:file "_package_PixelPose" :depends-on ("_package"))
    (:file "PixelPoses" :depends-on ("_package_PixelPoses"))
    (:file "_package_PixelPoses" :depends-on ("_package"))
    (:file "VehicleMode" :depends-on ("_package_VehicleMode"))
    (:file "_package_VehicleMode" :depends-on ("_package"))
  ))