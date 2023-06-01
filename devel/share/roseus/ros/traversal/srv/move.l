;; Auto-generated. Do not edit!


(when (boundp 'traversal::move)
  (if (not (find-package "TRAVERSAL"))
    (make-package "TRAVERSAL"))
  (shadow 'move (find-package "TRAVERSAL")))
(unless (find-package "TRAVERSAL::MOVE")
  (make-package "TRAVERSAL::MOVE"))
(unless (find-package "TRAVERSAL::MOVEREQUEST")
  (make-package "TRAVERSAL::MOVEREQUEST"))
(unless (find-package "TRAVERSAL::MOVERESPONSE")
  (make-package "TRAVERSAL::MOVERESPONSE"))

(in-package "ROS")





(defclass traversal::moveRequest
  :super ros::object
  :slots (_distance ))

(defmethod traversal::moveRequest
  (:init
   (&key
    ((:distance __distance) 0.0)
    )
   (send-super :init)
   (setq _distance (float __distance))
   self)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:serialization-length
   ()
   (+
    ;; float64 _distance
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _distance
     (setq _distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass traversal::moveResponse
  :super ros::object
  :slots (_result ))

(defmethod traversal::moveResponse
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

(defclass traversal::move
  :super ros::object
  :slots ())

(setf (get traversal::move :md5sum-) "7cef8d8112746dcd321eae0deeda86a8")
(setf (get traversal::move :datatype-) "traversal/move")
(setf (get traversal::move :request) traversal::moveRequest)
(setf (get traversal::move :response) traversal::moveResponse)

(defmethod traversal::moveRequest
  (:response () (instance traversal::moveResponse :init)))

(setf (get traversal::moveRequest :md5sum-) "7cef8d8112746dcd321eae0deeda86a8")
(setf (get traversal::moveRequest :datatype-) "traversal/moveRequest")
(setf (get traversal::moveRequest :definition-)
      "float64 distance
---
string result

")

(setf (get traversal::moveResponse :md5sum-) "7cef8d8112746dcd321eae0deeda86a8")
(setf (get traversal::moveResponse :datatype-) "traversal/moveResponse")
(setf (get traversal::moveResponse :definition-)
      "float64 distance
---
string result

")



(provide :traversal/move "7cef8d8112746dcd321eae0deeda86a8")


