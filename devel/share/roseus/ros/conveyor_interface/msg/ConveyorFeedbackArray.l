;; Auto-generated. Do not edit!


(when (boundp 'conveyor_interface::ConveyorFeedbackArray)
  (if (not (find-package "CONVEYOR_INTERFACE"))
    (make-package "CONVEYOR_INTERFACE"))
  (shadow 'ConveyorFeedbackArray (find-package "CONVEYOR_INTERFACE")))
(unless (find-package "CONVEYOR_INTERFACE::CONVEYORFEEDBACKARRAY")
  (make-package "CONVEYOR_INTERFACE::CONVEYORFEEDBACKARRAY"))

(in-package "ROS")
;;//! \htmlinclude ConveyorFeedbackArray.msg.html


(defclass conveyor_interface::ConveyorFeedbackArray
  :super ros::object
  :slots (_conveyors ))

(defmethod conveyor_interface::ConveyorFeedbackArray
  (:init
   (&key
    ((:conveyors __conveyors) ())
    )
   (send-super :init)
   (setq _conveyors __conveyors)
   self)
  (:conveyors
   (&rest __conveyors)
   (if (keywordp (car __conveyors))
       (send* _conveyors __conveyors)
     (progn
       (if __conveyors (setq _conveyors (car __conveyors)))
       _conveyors)))
  (:serialization-length
   ()
   (+
    ;; conveyor_interface/ConveyorFeedback[] _conveyors
    (apply #'+ (send-all _conveyors :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; conveyor_interface/ConveyorFeedback[] _conveyors
     (write-long (length _conveyors) s)
     (dolist (elem _conveyors)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; conveyor_interface/ConveyorFeedback[] _conveyors
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _conveyors (let (r) (dotimes (i n) (push (instance conveyor_interface::ConveyorFeedback :init) r)) r))
     (dolist (elem- _conveyors)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get conveyor_interface::ConveyorFeedbackArray :md5sum-) "40390fad55d7b855b36296e05b77db14")
(setf (get conveyor_interface::ConveyorFeedbackArray :datatype-) "conveyor_interface/ConveyorFeedbackArray")
(setf (get conveyor_interface::ConveyorFeedbackArray :definition-)
      "conveyor_interface/ConveyorFeedback[] conveyors
================================================================================
MSG: conveyor_interface/ConveyorFeedback

#Conveyor id ( either 12 or 18)
uint8 conveyor_id
#Conveyor Connection state ( if it is enabled) 
bool connection_state
# Conveyor Controls state : ON or OFF
bool running
# Conveyor Speed ( 1-> 100 %)
int16 speed
# Conveyor direction ( backward or forward)
int8 direction

")



(provide :conveyor_interface/ConveyorFeedbackArray "40390fad55d7b855b36296e05b77db14")


