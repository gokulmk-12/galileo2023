;; Auto-generated. Do not edit!


(when (boundp 'sensor_pcb::sense)
  (if (not (find-package "SENSOR_PCB"))
    (make-package "SENSOR_PCB"))
  (shadow 'sense (find-package "SENSOR_PCB")))
(unless (find-package "SENSOR_PCB::SENSE")
  (make-package "SENSOR_PCB::SENSE"))

(in-package "ROS")
;;//! \htmlinclude sense.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass sensor_pcb::sense
  :super ros::object
  :slots (_Battery_Voltage_1 _Battery_Voltage_2 _Temperature _GPS_Latitude _GPS_Longitude _IMU ))

(defmethod sensor_pcb::sense
  (:init
   (&key
    ((:Battery_Voltage_1 __Battery_Voltage_1) (instance std_msgs::Float32 :init))
    ((:Battery_Voltage_2 __Battery_Voltage_2) (instance std_msgs::Float32 :init))
    ((:Temperature __Temperature) (instance std_msgs::String :init))
    ((:GPS_Latitude __GPS_Latitude) (instance std_msgs::Float32 :init))
    ((:GPS_Longitude __GPS_Longitude) (instance std_msgs::Float32 :init))
    ((:IMU __IMU) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _Battery_Voltage_1 __Battery_Voltage_1)
   (setq _Battery_Voltage_2 __Battery_Voltage_2)
   (setq _Temperature __Temperature)
   (setq _GPS_Latitude __GPS_Latitude)
   (setq _GPS_Longitude __GPS_Longitude)
   (setq _IMU __IMU)
   self)
  (:Battery_Voltage_1
   (&rest __Battery_Voltage_1)
   (if (keywordp (car __Battery_Voltage_1))
       (send* _Battery_Voltage_1 __Battery_Voltage_1)
     (progn
       (if __Battery_Voltage_1 (setq _Battery_Voltage_1 (car __Battery_Voltage_1)))
       _Battery_Voltage_1)))
  (:Battery_Voltage_2
   (&rest __Battery_Voltage_2)
   (if (keywordp (car __Battery_Voltage_2))
       (send* _Battery_Voltage_2 __Battery_Voltage_2)
     (progn
       (if __Battery_Voltage_2 (setq _Battery_Voltage_2 (car __Battery_Voltage_2)))
       _Battery_Voltage_2)))
  (:Temperature
   (&rest __Temperature)
   (if (keywordp (car __Temperature))
       (send* _Temperature __Temperature)
     (progn
       (if __Temperature (setq _Temperature (car __Temperature)))
       _Temperature)))
  (:GPS_Latitude
   (&rest __GPS_Latitude)
   (if (keywordp (car __GPS_Latitude))
       (send* _GPS_Latitude __GPS_Latitude)
     (progn
       (if __GPS_Latitude (setq _GPS_Latitude (car __GPS_Latitude)))
       _GPS_Latitude)))
  (:GPS_Longitude
   (&rest __GPS_Longitude)
   (if (keywordp (car __GPS_Longitude))
       (send* _GPS_Longitude __GPS_Longitude)
     (progn
       (if __GPS_Longitude (setq _GPS_Longitude (car __GPS_Longitude)))
       _GPS_Longitude)))
  (:IMU
   (&rest __IMU)
   (if (keywordp (car __IMU))
       (send* _IMU __IMU)
     (progn
       (if __IMU (setq _IMU (car __IMU)))
       _IMU)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Float32 _Battery_Voltage_1
    (send _Battery_Voltage_1 :serialization-length)
    ;; std_msgs/Float32 _Battery_Voltage_2
    (send _Battery_Voltage_2 :serialization-length)
    ;; std_msgs/String _Temperature
    (send _Temperature :serialization-length)
    ;; std_msgs/Float32 _GPS_Latitude
    (send _GPS_Latitude :serialization-length)
    ;; std_msgs/Float32 _GPS_Longitude
    (send _GPS_Longitude :serialization-length)
    ;; geometry_msgs/Vector3 _IMU
    (send _IMU :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Float32 _Battery_Voltage_1
       (send _Battery_Voltage_1 :serialize s)
     ;; std_msgs/Float32 _Battery_Voltage_2
       (send _Battery_Voltage_2 :serialize s)
     ;; std_msgs/String _Temperature
       (send _Temperature :serialize s)
     ;; std_msgs/Float32 _GPS_Latitude
       (send _GPS_Latitude :serialize s)
     ;; std_msgs/Float32 _GPS_Longitude
       (send _GPS_Longitude :serialize s)
     ;; geometry_msgs/Vector3 _IMU
       (send _IMU :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Float32 _Battery_Voltage_1
     (send _Battery_Voltage_1 :deserialize buf ptr-) (incf ptr- (send _Battery_Voltage_1 :serialization-length))
   ;; std_msgs/Float32 _Battery_Voltage_2
     (send _Battery_Voltage_2 :deserialize buf ptr-) (incf ptr- (send _Battery_Voltage_2 :serialization-length))
   ;; std_msgs/String _Temperature
     (send _Temperature :deserialize buf ptr-) (incf ptr- (send _Temperature :serialization-length))
   ;; std_msgs/Float32 _GPS_Latitude
     (send _GPS_Latitude :deserialize buf ptr-) (incf ptr- (send _GPS_Latitude :serialization-length))
   ;; std_msgs/Float32 _GPS_Longitude
     (send _GPS_Longitude :deserialize buf ptr-) (incf ptr- (send _GPS_Longitude :serialization-length))
   ;; geometry_msgs/Vector3 _IMU
     (send _IMU :deserialize buf ptr-) (incf ptr- (send _IMU :serialization-length))
   ;;
   self)
  )

(setf (get sensor_pcb::sense :md5sum-) "11445e6cc93ea96e7fdeae6e74b4f86a")
(setf (get sensor_pcb::sense :datatype-) "sensor_pcb/sense")
(setf (get sensor_pcb::sense :definition-)
      "std_msgs/Float32 Battery_Voltage_1
std_msgs/Float32 Battery_Voltage_2
std_msgs/String Temperature 
std_msgs/Float32 GPS_Latitude
std_msgs/Float32 GPS_Longitude
geometry_msgs/Vector3 IMU


================================================================================
MSG: std_msgs/Float32
float32 data
================================================================================
MSG: std_msgs/String
string data

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :sensor_pcb/sense "11445e6cc93ea96e7fdeae6e74b4f86a")


