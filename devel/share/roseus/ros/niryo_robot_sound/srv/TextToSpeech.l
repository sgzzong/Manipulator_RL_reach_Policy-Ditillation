;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_sound::TextToSpeech)
  (if (not (find-package "NIRYO_ROBOT_SOUND"))
    (make-package "NIRYO_ROBOT_SOUND"))
  (shadow 'TextToSpeech (find-package "NIRYO_ROBOT_SOUND")))
(unless (find-package "NIRYO_ROBOT_SOUND::TEXTTOSPEECH")
  (make-package "NIRYO_ROBOT_SOUND::TEXTTOSPEECH"))
(unless (find-package "NIRYO_ROBOT_SOUND::TEXTTOSPEECHREQUEST")
  (make-package "NIRYO_ROBOT_SOUND::TEXTTOSPEECHREQUEST"))
(unless (find-package "NIRYO_ROBOT_SOUND::TEXTTOSPEECHRESPONSE")
  (make-package "NIRYO_ROBOT_SOUND::TEXTTOSPEECHRESPONSE"))

(in-package "ROS")





(intern "*ENGLISH*" (find-package "NIRYO_ROBOT_SOUND::TEXTTOSPEECHREQUEST"))
(shadow '*ENGLISH* (find-package "NIRYO_ROBOT_SOUND::TEXTTOSPEECHREQUEST"))
(defconstant niryo_robot_sound::TextToSpeechRequest::*ENGLISH* 0)
(intern "*FRENCH*" (find-package "NIRYO_ROBOT_SOUND::TEXTTOSPEECHREQUEST"))
(shadow '*FRENCH* (find-package "NIRYO_ROBOT_SOUND::TEXTTOSPEECHREQUEST"))
(defconstant niryo_robot_sound::TextToSpeechRequest::*FRENCH* 1)
(intern "*SPANISH*" (find-package "NIRYO_ROBOT_SOUND::TEXTTOSPEECHREQUEST"))
(shadow '*SPANISH* (find-package "NIRYO_ROBOT_SOUND::TEXTTOSPEECHREQUEST"))
(defconstant niryo_robot_sound::TextToSpeechRequest::*SPANISH* 3)
(intern "*MANDARIN*" (find-package "NIRYO_ROBOT_SOUND::TEXTTOSPEECHREQUEST"))
(shadow '*MANDARIN* (find-package "NIRYO_ROBOT_SOUND::TEXTTOSPEECHREQUEST"))
(defconstant niryo_robot_sound::TextToSpeechRequest::*MANDARIN* 4)
(intern "*PORTUGUESE*" (find-package "NIRYO_ROBOT_SOUND::TEXTTOSPEECHREQUEST"))
(shadow '*PORTUGUESE* (find-package "NIRYO_ROBOT_SOUND::TEXTTOSPEECHREQUEST"))
(defconstant niryo_robot_sound::TextToSpeechRequest::*PORTUGUESE* 5)

(defun niryo_robot_sound::TextToSpeechRequest-to-symbol (const)
  (cond
        ((= const 0) 'niryo_robot_sound::TextToSpeechRequest::*ENGLISH*)
        ((= const 1) 'niryo_robot_sound::TextToSpeechRequest::*FRENCH*)
        ((= const 3) 'niryo_robot_sound::TextToSpeechRequest::*SPANISH*)
        ((= const 4) 'niryo_robot_sound::TextToSpeechRequest::*MANDARIN*)
        ((= const 5) 'niryo_robot_sound::TextToSpeechRequest::*PORTUGUESE*)
        (t nil)))

(defclass niryo_robot_sound::TextToSpeechRequest
  :super ros::object
  :slots (_text _language ))

(defmethod niryo_robot_sound::TextToSpeechRequest
  (:init
   (&key
    ((:text __text) "")
    ((:language __language) 0)
    )
   (send-super :init)
   (setq _text (string __text))
   (setq _language (round __language))
   self)
  (:text
   (&optional __text)
   (if __text (setq _text __text)) _text)
  (:language
   (&optional __language)
   (if __language (setq _language __language)) _language)
  (:serialization-length
   ()
   (+
    ;; string _text
    4 (length _text)
    ;; int8 _language
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _text
       (write-long (length _text) s) (princ _text s)
     ;; int8 _language
       (write-byte _language s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _text
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _text (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int8 _language
     (setq _language (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _language 127) (setq _language (- _language 256)))
   ;;
   self)
  )

(defclass niryo_robot_sound::TextToSpeechResponse
  :super ros::object
  :slots (_success _message ))

(defmethod niryo_robot_sound::TextToSpeechResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass niryo_robot_sound::TextToSpeech
  :super ros::object
  :slots ())

(setf (get niryo_robot_sound::TextToSpeech :md5sum-) "6f3063fb67f0e8a5e02d9920b53fb537")
(setf (get niryo_robot_sound::TextToSpeech :datatype-) "niryo_robot_sound/TextToSpeech")
(setf (get niryo_robot_sound::TextToSpeech :request) niryo_robot_sound::TextToSpeechRequest)
(setf (get niryo_robot_sound::TextToSpeech :response) niryo_robot_sound::TextToSpeechResponse)

(defmethod niryo_robot_sound::TextToSpeechRequest
  (:response () (instance niryo_robot_sound::TextToSpeechResponse :init)))

(setf (get niryo_robot_sound::TextToSpeechRequest :md5sum-) "6f3063fb67f0e8a5e02d9920b53fb537")
(setf (get niryo_robot_sound::TextToSpeechRequest :datatype-) "niryo_robot_sound/TextToSpeechRequest")
(setf (get niryo_robot_sound::TextToSpeechRequest :definition-)
      "string text # < 100 char


int8 ENGLISH = 0
int8 FRENCH = 1
int8 SPANISH = 3
int8 MANDARIN = 4
int8 PORTUGUESE = 5

int8 language
---
bool success
string message
")

(setf (get niryo_robot_sound::TextToSpeechResponse :md5sum-) "6f3063fb67f0e8a5e02d9920b53fb537")
(setf (get niryo_robot_sound::TextToSpeechResponse :datatype-) "niryo_robot_sound/TextToSpeechResponse")
(setf (get niryo_robot_sound::TextToSpeechResponse :definition-)
      "string text # < 100 char


int8 ENGLISH = 0
int8 FRENCH = 1
int8 SPANISH = 3
int8 MANDARIN = 4
int8 PORTUGUESE = 5

int8 language
---
bool success
string message
")



(provide :niryo_robot_sound/TextToSpeech "6f3063fb67f0e8a5e02d9920b53fb537")


