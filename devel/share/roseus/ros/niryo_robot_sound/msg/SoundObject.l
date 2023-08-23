;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_sound::SoundObject)
  (if (not (find-package "NIRYO_ROBOT_SOUND"))
    (make-package "NIRYO_ROBOT_SOUND"))
  (shadow 'SoundObject (find-package "NIRYO_ROBOT_SOUND")))
(unless (find-package "NIRYO_ROBOT_SOUND::SOUNDOBJECT")
  (make-package "NIRYO_ROBOT_SOUND::SOUNDOBJECT"))

(in-package "ROS")
;;//! \htmlinclude SoundObject.msg.html


(defclass niryo_robot_sound::SoundObject
  :super ros::object
  :slots (_name _duration ))

(defmethod niryo_robot_sound::SoundObject
  (:init
   (&key
    ((:name __name) "")
    ((:duration __duration) 0.0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _duration (float __duration))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:duration
   (&optional __duration)
   (if __duration (setq _duration __duration)) _duration)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; float64 _duration
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; float64 _duration
       (sys::poke _duration (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _duration
     (setq _duration (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get niryo_robot_sound::SoundObject :md5sum-) "958aa3865faceda1f9534bbdc6ae923e")
(setf (get niryo_robot_sound::SoundObject :datatype-) "niryo_robot_sound/SoundObject")
(setf (get niryo_robot_sound::SoundObject :definition-)
      "string name
float64 duration
")



(provide :niryo_robot_sound/SoundObject "958aa3865faceda1f9534bbdc6ae923e")


