; Auto-generated. Do not edit!


(cl:in-package sensor_pcb-msg)


;//! \htmlinclude sense.msg.html

(cl:defclass <sense> (roslisp-msg-protocol:ros-message)
  ((Battery_Voltage_1
    :reader Battery_Voltage_1
    :initarg :Battery_Voltage_1
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (Battery_Voltage_2
    :reader Battery_Voltage_2
    :initarg :Battery_Voltage_2
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (Temperature
    :reader Temperature
    :initarg :Temperature
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (GPS_Latitude
    :reader GPS_Latitude
    :initarg :GPS_Latitude
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (GPS_Longitude
    :reader GPS_Longitude
    :initarg :GPS_Longitude
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (IMU
    :reader IMU
    :initarg :IMU
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass sense (<sense>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <sense>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'sense)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_pcb-msg:<sense> is deprecated: use sensor_pcb-msg:sense instead.")))

(cl:ensure-generic-function 'Battery_Voltage_1-val :lambda-list '(m))
(cl:defmethod Battery_Voltage_1-val ((m <sense>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_pcb-msg:Battery_Voltage_1-val is deprecated.  Use sensor_pcb-msg:Battery_Voltage_1 instead.")
  (Battery_Voltage_1 m))

(cl:ensure-generic-function 'Battery_Voltage_2-val :lambda-list '(m))
(cl:defmethod Battery_Voltage_2-val ((m <sense>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_pcb-msg:Battery_Voltage_2-val is deprecated.  Use sensor_pcb-msg:Battery_Voltage_2 instead.")
  (Battery_Voltage_2 m))

(cl:ensure-generic-function 'Temperature-val :lambda-list '(m))
(cl:defmethod Temperature-val ((m <sense>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_pcb-msg:Temperature-val is deprecated.  Use sensor_pcb-msg:Temperature instead.")
  (Temperature m))

(cl:ensure-generic-function 'GPS_Latitude-val :lambda-list '(m))
(cl:defmethod GPS_Latitude-val ((m <sense>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_pcb-msg:GPS_Latitude-val is deprecated.  Use sensor_pcb-msg:GPS_Latitude instead.")
  (GPS_Latitude m))

(cl:ensure-generic-function 'GPS_Longitude-val :lambda-list '(m))
(cl:defmethod GPS_Longitude-val ((m <sense>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_pcb-msg:GPS_Longitude-val is deprecated.  Use sensor_pcb-msg:GPS_Longitude instead.")
  (GPS_Longitude m))

(cl:ensure-generic-function 'IMU-val :lambda-list '(m))
(cl:defmethod IMU-val ((m <sense>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_pcb-msg:IMU-val is deprecated.  Use sensor_pcb-msg:IMU instead.")
  (IMU m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <sense>) ostream)
  "Serializes a message object of type '<sense>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'Battery_Voltage_1) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'Battery_Voltage_2) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'Temperature) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'GPS_Latitude) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'GPS_Longitude) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'IMU) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <sense>) istream)
  "Deserializes a message object of type '<sense>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'Battery_Voltage_1) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'Battery_Voltage_2) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'Temperature) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'GPS_Latitude) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'GPS_Longitude) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'IMU) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<sense>)))
  "Returns string type for a message object of type '<sense>"
  "sensor_pcb/sense")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'sense)))
  "Returns string type for a message object of type 'sense"
  "sensor_pcb/sense")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<sense>)))
  "Returns md5sum for a message object of type '<sense>"
  "11445e6cc93ea96e7fdeae6e74b4f86a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'sense)))
  "Returns md5sum for a message object of type 'sense"
  "11445e6cc93ea96e7fdeae6e74b4f86a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<sense>)))
  "Returns full string definition for message of type '<sense>"
  (cl:format cl:nil "std_msgs/Float32 Battery_Voltage_1~%std_msgs/Float32 Battery_Voltage_2~%std_msgs/String Temperature ~%std_msgs/Float32 GPS_Latitude~%std_msgs/Float32 GPS_Longitude~%geometry_msgs/Vector3 IMU~%~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'sense)))
  "Returns full string definition for message of type 'sense"
  (cl:format cl:nil "std_msgs/Float32 Battery_Voltage_1~%std_msgs/Float32 Battery_Voltage_2~%std_msgs/String Temperature ~%std_msgs/Float32 GPS_Latitude~%std_msgs/Float32 GPS_Longitude~%geometry_msgs/Vector3 IMU~%~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <sense>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'Battery_Voltage_1))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'Battery_Voltage_2))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'Temperature))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'GPS_Latitude))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'GPS_Longitude))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'IMU))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <sense>))
  "Converts a ROS message object to a list"
  (cl:list 'sense
    (cl:cons ':Battery_Voltage_1 (Battery_Voltage_1 msg))
    (cl:cons ':Battery_Voltage_2 (Battery_Voltage_2 msg))
    (cl:cons ':Temperature (Temperature msg))
    (cl:cons ':GPS_Latitude (GPS_Latitude msg))
    (cl:cons ':GPS_Longitude (GPS_Longitude msg))
    (cl:cons ':IMU (IMU msg))
))
