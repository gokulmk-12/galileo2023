; Auto-generated. Do not edit!


(cl:in-package traversal-srv)


;//! \htmlinclude rotate-request.msg.html

(cl:defclass <rotate-request> (roslisp-msg-protocol:ros-message)
  ((angle
    :reader angle
    :initarg :angle
    :type cl:float
    :initform 0.0))
)

(cl:defclass rotate-request (<rotate-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <rotate-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'rotate-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name traversal-srv:<rotate-request> is deprecated: use traversal-srv:rotate-request instead.")))

(cl:ensure-generic-function 'angle-val :lambda-list '(m))
(cl:defmethod angle-val ((m <rotate-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader traversal-srv:angle-val is deprecated.  Use traversal-srv:angle instead.")
  (angle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <rotate-request>) ostream)
  "Serializes a message object of type '<rotate-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <rotate-request>) istream)
  "Deserializes a message object of type '<rotate-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<rotate-request>)))
  "Returns string type for a service object of type '<rotate-request>"
  "traversal/rotateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'rotate-request)))
  "Returns string type for a service object of type 'rotate-request"
  "traversal/rotateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<rotate-request>)))
  "Returns md5sum for a message object of type '<rotate-request>"
  "68ab4445b744dfee815876481a389c04")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'rotate-request)))
  "Returns md5sum for a message object of type 'rotate-request"
  "68ab4445b744dfee815876481a389c04")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<rotate-request>)))
  "Returns full string definition for message of type '<rotate-request>"
  (cl:format cl:nil "float64 angle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'rotate-request)))
  "Returns full string definition for message of type 'rotate-request"
  (cl:format cl:nil "float64 angle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <rotate-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <rotate-request>))
  "Converts a ROS message object to a list"
  (cl:list 'rotate-request
    (cl:cons ':angle (angle msg))
))
;//! \htmlinclude rotate-response.msg.html

(cl:defclass <rotate-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:string
    :initform ""))
)

(cl:defclass rotate-response (<rotate-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <rotate-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'rotate-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name traversal-srv:<rotate-response> is deprecated: use traversal-srv:rotate-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <rotate-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader traversal-srv:result-val is deprecated.  Use traversal-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <rotate-response>) ostream)
  "Serializes a message object of type '<rotate-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'result))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <rotate-response>) istream)
  "Deserializes a message object of type '<rotate-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'result) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<rotate-response>)))
  "Returns string type for a service object of type '<rotate-response>"
  "traversal/rotateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'rotate-response)))
  "Returns string type for a service object of type 'rotate-response"
  "traversal/rotateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<rotate-response>)))
  "Returns md5sum for a message object of type '<rotate-response>"
  "68ab4445b744dfee815876481a389c04")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'rotate-response)))
  "Returns md5sum for a message object of type 'rotate-response"
  "68ab4445b744dfee815876481a389c04")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<rotate-response>)))
  "Returns full string definition for message of type '<rotate-response>"
  (cl:format cl:nil "string result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'rotate-response)))
  "Returns full string definition for message of type 'rotate-response"
  (cl:format cl:nil "string result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <rotate-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'result))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <rotate-response>))
  "Converts a ROS message object to a list"
  (cl:list 'rotate-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'rotate)))
  'rotate-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'rotate)))
  'rotate-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'rotate)))
  "Returns string type for a service object of type '<rotate>"
  "traversal/rotate")