; Auto-generated. Do not edit!


(cl:in-package traversal-msg)


;//! \htmlinclude WheelRpm.msg.html

(cl:defclass <WheelRpm> (roslisp-msg-protocol:ros-message)
  ((vel
    :reader vel
    :initarg :vel
    :type cl:fixnum
    :initform 0)
   (omega
    :reader omega
    :initarg :omega
    :type cl:fixnum
    :initform 0)
   (hb
    :reader hb
    :initarg :hb
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass WheelRpm (<WheelRpm>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WheelRpm>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WheelRpm)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name traversal-msg:<WheelRpm> is deprecated: use traversal-msg:WheelRpm instead.")))

(cl:ensure-generic-function 'vel-val :lambda-list '(m))
(cl:defmethod vel-val ((m <WheelRpm>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader traversal-msg:vel-val is deprecated.  Use traversal-msg:vel instead.")
  (vel m))

(cl:ensure-generic-function 'omega-val :lambda-list '(m))
(cl:defmethod omega-val ((m <WheelRpm>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader traversal-msg:omega-val is deprecated.  Use traversal-msg:omega instead.")
  (omega m))

(cl:ensure-generic-function 'hb-val :lambda-list '(m))
(cl:defmethod hb-val ((m <WheelRpm>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader traversal-msg:hb-val is deprecated.  Use traversal-msg:hb instead.")
  (hb m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WheelRpm>) ostream)
  "Serializes a message object of type '<WheelRpm>"
  (cl:let* ((signed (cl:slot-value msg 'vel)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'omega)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'hb) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WheelRpm>) istream)
  "Deserializes a message object of type '<WheelRpm>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'vel) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'omega) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:setf (cl:slot-value msg 'hb) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WheelRpm>)))
  "Returns string type for a message object of type '<WheelRpm>"
  "traversal/WheelRpm")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WheelRpm)))
  "Returns string type for a message object of type 'WheelRpm"
  "traversal/WheelRpm")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WheelRpm>)))
  "Returns md5sum for a message object of type '<WheelRpm>"
  "524ce3b1091d34ce15083042edf1da49")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WheelRpm)))
  "Returns md5sum for a message object of type 'WheelRpm"
  "524ce3b1091d34ce15083042edf1da49")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WheelRpm>)))
  "Returns full string definition for message of type '<WheelRpm>"
  (cl:format cl:nil "int16 vel~%int16 omega~%bool hb~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WheelRpm)))
  "Returns full string definition for message of type 'WheelRpm"
  (cl:format cl:nil "int16 vel~%int16 omega~%bool hb~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WheelRpm>))
  (cl:+ 0
     2
     2
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WheelRpm>))
  "Converts a ROS message object to a list"
  (cl:list 'WheelRpm
    (cl:cons ':vel (vel msg))
    (cl:cons ':omega (omega msg))
    (cl:cons ':hb (hb msg))
))
