;; Auto-generated. Do not edit!


(when (boundp 'traversal::rotate)
  (if (not (find-package "TRAVERSAL"))
    (make-package "TRAVERSAL"))
  (shadow 'rotate (find-package "TRAVERSAL")))
(unless (find-package "TRAVERSAL::ROTATE")
  (make-package "TRAVERSAL::ROTATE"))
(unless (find-package "TRAVERSAL::ROTATEREQUEST")
  (make-package "TRAVERSAL::ROTATEREQUEST"))
(unless (find-package "TRAVERSAL::ROTATERESPONSE")
  (make-package "TRAVERSAL::ROTATERESPONSE"))

(in-package "ROS")





(defclass traversal::rotateRequest
  :super ros::object
  :slots (_angle ))

(defmethod traversal::rotateRequest
  (:init
   (&key
    ((:angle __angle) 0.0)
    )
   (send-super :init)
   (setq _angle (float __angle))
   self)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:serialization-length
   ()
   (+
    ;; float64 _angle
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _angle
       (sys::poke _angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _angle
     (setq _angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass traversal::rotateResponse
  :super ros::object
  :slots (_result ))

(defmethod traversal::rotateResponse
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

(defclass traversal::rotate
  :super ros::object
  :slots ())

(setf (get traversal::rotate :md5sum-) "68ab4445b744dfee815876481a389c04")
(setf (get traversal::rotate :datatype-) "traversal/rotate")
(setf (get traversal::rotate :request) traversal::rotateRequest)
(setf (get traversal::rotate :response) traversal::rotateResponse)

(defmethod traversal::rotateRequest
  (:response () (instance traversal::rotateResponse :init)))

(setf (get traversal::rotateRequest :md5sum-) "68ab4445b744dfee815876481a389c04")
(setf (get traversal::rotateRequest :datatype-) "traversal/rotateRequest")
(setf (get traversal::rotateRequest :definition-)
      "float64 angle
---
string result

")

(setf (get traversal::rotateResponse :md5sum-) "68ab4445b744dfee815876481a389c04")
(setf (get traversal::rotateResponse :datatype-) "traversal/rotateResponse")
(setf (get traversal::rotateResponse :definition-)
      "float64 angle
---
string result

")



(provide :traversal/rotate "68ab4445b744dfee815876481a389c04")


