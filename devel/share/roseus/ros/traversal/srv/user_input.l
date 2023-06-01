;; Auto-generated. Do not edit!


(when (boundp 'traversal::user_input)
  (if (not (find-package "TRAVERSAL"))
    (make-package "TRAVERSAL"))
  (shadow 'user_input (find-package "TRAVERSAL")))
(unless (find-package "TRAVERSAL::USER_INPUT")
  (make-package "TRAVERSAL::USER_INPUT"))
(unless (find-package "TRAVERSAL::USER_INPUTREQUEST")
  (make-package "TRAVERSAL::USER_INPUTREQUEST"))
(unless (find-package "TRAVERSAL::USER_INPUTRESPONSE")
  (make-package "TRAVERSAL::USER_INPUTRESPONSE"))

(in-package "ROS")





(defclass traversal::user_inputRequest
  :super ros::object
  :slots (_active_input ))

(defmethod traversal::user_inputRequest
  (:init
   (&key
    ((:active_input __active_input) 0)
    )
   (send-super :init)
   (setq _active_input (round __active_input))
   self)
  (:active_input
   (&optional __active_input)
   (if __active_input (setq _active_input __active_input)) _active_input)
  (:serialization-length
   ()
   (+
    ;; int16 _active_input
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _active_input
       (write-word _active_input s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _active_input
     (setq _active_input (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass traversal::user_inputResponse
  :super ros::object
  :slots (_result ))

(defmethod traversal::user_inputResponse
  (:init
   (&key
    ((:result __result) "")
    )
   (send-super :init)
   (setq _result (string __result))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; string _result
    4 (length _result)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _result
       (write-long (length _result) s) (princ _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _result
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _result (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass traversal::user_input
  :super ros::object
  :slots ())

(setf (get traversal::user_input :md5sum-) "932d3fdf41ce458ae95bf92e0b793237")
(setf (get traversal::user_input :datatype-) "traversal/user_input")
(setf (get traversal::user_input :request) traversal::user_inputRequest)
(setf (get traversal::user_input :response) traversal::user_inputResponse)

(defmethod traversal::user_inputRequest
  (:response () (instance traversal::user_inputResponse :init)))

(setf (get traversal::user_inputRequest :md5sum-) "932d3fdf41ce458ae95bf92e0b793237")
(setf (get traversal::user_inputRequest :datatype-) "traversal/user_inputRequest")
(setf (get traversal::user_inputRequest :definition-)
      "int16 active_input
---
string result

")

(setf (get traversal::user_inputResponse :md5sum-) "932d3fdf41ce458ae95bf92e0b793237")
(setf (get traversal::user_inputResponse :datatype-) "traversal/user_inputResponse")
(setf (get traversal::user_inputResponse :definition-)
      "int16 active_input
---
string result

")



(provide :traversal/user_input "932d3fdf41ce458ae95bf92e0b793237")


