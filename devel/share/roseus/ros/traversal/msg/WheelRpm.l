;; Auto-generated. Do not edit!


(when (boundp 'traversal::WheelRpm)
  (if (not (find-package "TRAVERSAL"))
    (make-package "TRAVERSAL"))
  (shadow 'WheelRpm (find-package "TRAVERSAL")))
(unless (find-package "TRAVERSAL::WHEELRPM")
  (make-package "TRAVERSAL::WHEELRPM"))

(in-package "ROS")
;;//! \htmlinclude WheelRpm.msg.html


(defclass traversal::WheelRpm
  :super ros::object
  :slots (_vel _omega _hb ))

(defmethod traversal::WheelRpm
  (:init
   (&key
    ((:vel __vel) 0)
    ((:omega __omega) 0)
    ((:hb __hb) nil)
    )
   (send-super :init)
   (setq _vel (round __vel))
   (setq _omega (round __omega))
   (setq _hb __hb)
   self)
  (:vel
   (&optional __vel)
   (if __vel (setq _vel __vel)) _vel)
  (:omega
   (&optional __omega)
   (if __omega (setq _omega __omega)) _omega)
  (:hb
   (&optional (__hb :null))
   (if (not (eq __hb :null)) (setq _hb __hb)) _hb)
  (:serialization-length
   ()
   (+
    ;; int16 _vel
    2
    ;; int16 _omega
    2
    ;; bool _hb
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _vel
       (write-word _vel s)
     ;; int16 _omega
       (write-word _omega s)
     ;; bool _hb
       (if _hb (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _vel
     (setq _vel (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _omega
     (setq _omega (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; bool _hb
     (setq _hb (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get traversal::WheelRpm :md5sum-) "524ce3b1091d34ce15083042edf1da49")
(setf (get traversal::WheelRpm :datatype-) "traversal/WheelRpm")
(setf (get traversal::WheelRpm :definition-)
      "int16 vel
int16 omega
bool hb

")



(provide :traversal/WheelRpm "524ce3b1091d34ce15083042edf1da49")


