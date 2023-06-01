; Auto-generated. Do not edit!


(cl:in-package traversal-srv)


;//! \htmlinclude user_input-request.msg.html

(cl:defclass <user_input-request> (roslisp-msg-protocol:ros-message)
  ((active_input
    :reader active_input
    :initarg :active_input
    :type cl:fixnum
    :initform 0))
)

(cl:defclass user_input-request (<user_input-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <user_input-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'user_input-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name traversal-srv:<user_input-request> is deprecated: use traversal-srv:user_input-request instead.")))

(cl:ensure-generic-function 'active_input-val :lambda-list '(m))
(cl:defmethod active_input-val ((m <user_input-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader traversal-srv:active_input-val is deprecated.  Use traversal-srv:active_input instead.")
  (active_input m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <user_input-request>) ostream)
  "Serializes a message object of type '<user_input-request>"
  (cl:let* ((signed (cl:slot-value msg 'active_input)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <user_input-request>) istream)
  "Deserializes a message object of type '<user_input-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'active_input) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<user_input-request>)))
  "Returns string type for a service object of type '<user_input-request>"
  "traversal/user_inputRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'user_input-request)))
  "Returns string type for a service object of type 'user_input-request"
  "traversal/user_inputRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<user_input-request>)))
  "Returns md5sum for a message object of type '<user_input-request>"
  "932d3fdf41ce458ae95bf92e0b793237")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'user_input-request)))
  "Returns md5sum for a message object of type 'user_input-request"
  "932d3fdf41ce458ae95bf92e0b793237")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<user_input-request>)))
  "Returns full string definition for message of type '<user_input-request>"
  (cl:format cl:nil "int16 active_input~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'user_input-request)))
  "Returns full string definition for message of type 'user_input-request"
  (cl:format cl:nil "int16 active_input~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <user_input-request>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <user_input-request>))
  "Converts a ROS message object to a list"
  (cl:list 'user_input-request
    (cl:cons ':active_input (active_input msg))
))
;//! \htmlinclude user_input-response.msg.html

(cl:defclass <user_input-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:string
    :initform ""))
)

(cl:defclass user_input-response (<user_input-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <user_input-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'user_input-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name traversal-srv:<user_input-response> is deprecated: use traversal-srv:user_input-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <user_input-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader traversal-srv:result-val is deprecated.  Use traversal-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <user_input-response>) ostream)
  "Serializes a message object of type '<user_input-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'result))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <user_input-response>) istream)
  "Deserializes a message object of type '<user_input-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<user_input-response>)))
  "Returns string type for a service object of type '<user_input-response>"
  "traversal/user_inputResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'user_input-response)))
  "Returns string type for a service object of type 'user_input-response"
  "traversal/user_inputResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<user_input-response>)))
  "Returns md5sum for a message object of type '<user_input-response>"
  "932d3fdf41ce458ae95bf92e0b793237")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'user_input-response)))
  "Returns md5sum for a message object of type 'user_input-response"
  "932d3fdf41ce458ae95bf92e0b793237")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<user_input-response>)))
  "Returns full string definition for message of type '<user_input-response>"
  (cl:format cl:nil "string result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'user_input-response)))
  "Returns full string definition for message of type 'user_input-response"
  (cl:format cl:nil "string result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <user_input-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'result))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <user_input-response>))
  "Converts a ROS message object to a list"
  (cl:list 'user_input-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'user_input)))
  'user_input-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'user_input)))
  'user_input-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'user_input)))
  "Returns string type for a service object of type '<user_input>"
  "traversal/user_input")