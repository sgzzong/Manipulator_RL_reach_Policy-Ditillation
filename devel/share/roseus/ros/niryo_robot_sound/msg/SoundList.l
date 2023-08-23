;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_sound::SoundList)
  (if (not (find-package "NIRYO_ROBOT_SOUND"))
    (make-package "NIRYO_ROBOT_SOUND"))
  (shadow 'SoundList (find-package "NIRYO_ROBOT_SOUND")))
(unless (find-package "NIRYO_ROBOT_SOUND::SOUNDLIST")
  (make-package "NIRYO_ROBOT_SOUND::SOUNDLIST"))

(in-package "ROS")
;;//! \htmlinclude SoundList.msg.html


(defclass niryo_robot_sound::SoundList
  :super ros::object
  :slots (_sounds ))

(defmethod niryo_robot_sound::SoundList
  (:init
   (&key
    ((:sounds __sounds) ())
    )
   (send-super :init)
   (setq _sounds __sounds)
   self)
  (:sounds
   (&rest __sounds)
   (if (keywordp (car __sounds))
       (send* _sounds __sounds)
     (progn
       (if __sounds (setq _sounds (car __sounds)))
       _sounds)))
  (:serialization-length
   ()
   (+
    ;; niryo_robot_sound/SoundObject[] _sounds
    (apply #'+ (send-all _sounds :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; niryo_robot_sound/SoundObject[] _sounds
     (write-long (length _sounds) s)
     (dolist (elem _sounds)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; niryo_robot_sound/SoundObject[] _sounds
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _sounds (let (r) (dotimes (i n) (push (instance niryo_robot_sound::SoundObject :init) r)) r))
     (dolist (elem- _sounds)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get niryo_robot_sound::SoundList :md5sum-) "05958294ca97e08c8d45a481537fb07d")
(setf (get niryo_robot_sound::SoundList :datatype-) "niryo_robot_sound/SoundList")
(setf (get niryo_robot_sound::SoundList :definition-)
      "niryo_robot_sound/SoundObject[] sounds
================================================================================
MSG: niryo_robot_sound/SoundObject
string name
float64 duration
")



(provide :niryo_robot_sound/SoundList "05958294ca97e08c8d45a481537fb07d")


