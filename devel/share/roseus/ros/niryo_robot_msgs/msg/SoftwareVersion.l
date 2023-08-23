;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_msgs::SoftwareVersion)
  (if (not (find-package "NIRYO_ROBOT_MSGS"))
    (make-package "NIRYO_ROBOT_MSGS"))
  (shadow 'SoftwareVersion (find-package "NIRYO_ROBOT_MSGS")))
(unless (find-package "NIRYO_ROBOT_MSGS::SOFTWAREVERSION")
  (make-package "NIRYO_ROBOT_MSGS::SOFTWAREVERSION"))

(in-package "ROS")
;;//! \htmlinclude SoftwareVersion.msg.html


(defclass niryo_robot_msgs::SoftwareVersion
  :super ros::object
  :slots (_rpi_image_version _ros_niryo_robot_version _robot_version _motor_names _stepper_firmware_versions ))

(defmethod niryo_robot_msgs::SoftwareVersion
  (:init
   (&key
    ((:rpi_image_version __rpi_image_version) "")
    ((:ros_niryo_robot_version __ros_niryo_robot_version) "")
    ((:robot_version __robot_version) "")
    ((:motor_names __motor_names) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:stepper_firmware_versions __stepper_firmware_versions) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _rpi_image_version (string __rpi_image_version))
   (setq _ros_niryo_robot_version (string __ros_niryo_robot_version))
   (setq _robot_version (string __robot_version))
   (setq _motor_names __motor_names)
   (setq _stepper_firmware_versions __stepper_firmware_versions)
   self)
  (:rpi_image_version
   (&optional __rpi_image_version)
   (if __rpi_image_version (setq _rpi_image_version __rpi_image_version)) _rpi_image_version)
  (:ros_niryo_robot_version
   (&optional __ros_niryo_robot_version)
   (if __ros_niryo_robot_version (setq _ros_niryo_robot_version __ros_niryo_robot_version)) _ros_niryo_robot_version)
  (:robot_version
   (&optional __robot_version)
   (if __robot_version (setq _robot_version __robot_version)) _robot_version)
  (:motor_names
   (&optional __motor_names)
   (if __motor_names (setq _motor_names __motor_names)) _motor_names)
  (:stepper_firmware_versions
   (&optional __stepper_firmware_versions)
   (if __stepper_firmware_versions (setq _stepper_firmware_versions __stepper_firmware_versions)) _stepper_firmware_versions)
  (:serialization-length
   ()
   (+
    ;; string _rpi_image_version
    4 (length _rpi_image_version)
    ;; string _ros_niryo_robot_version
    4 (length _ros_niryo_robot_version)
    ;; string _robot_version
    4 (length _robot_version)
    ;; string[] _motor_names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _motor_names)) 4
    ;; string[] _stepper_firmware_versions
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _stepper_firmware_versions)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _rpi_image_version
       (write-long (length _rpi_image_version) s) (princ _rpi_image_version s)
     ;; string _ros_niryo_robot_version
       (write-long (length _ros_niryo_robot_version) s) (princ _ros_niryo_robot_version s)
     ;; string _robot_version
       (write-long (length _robot_version) s) (princ _robot_version s)
     ;; string[] _motor_names
     (write-long (length _motor_names) s)
     (dolist (elem _motor_names)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _stepper_firmware_versions
     (write-long (length _stepper_firmware_versions) s)
     (dolist (elem _stepper_firmware_versions)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _rpi_image_version
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _rpi_image_version (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _ros_niryo_robot_version
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _ros_niryo_robot_version (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _robot_version
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _robot_version (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _motor_names
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _motor_names (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _motor_names i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _stepper_firmware_versions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _stepper_firmware_versions (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _stepper_firmware_versions i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get niryo_robot_msgs::SoftwareVersion :md5sum-) "6d753e36564fa618802ffe450e4bbdd2")
(setf (get niryo_robot_msgs::SoftwareVersion :datatype-) "niryo_robot_msgs/SoftwareVersion")
(setf (get niryo_robot_msgs::SoftwareVersion :definition-)
      "string rpi_image_version
string ros_niryo_robot_version
string robot_version

string[] motor_names
string[] stepper_firmware_versions

")



(provide :niryo_robot_msgs/SoftwareVersion "6d753e36564fa618802ffe450e4bbdd2")


