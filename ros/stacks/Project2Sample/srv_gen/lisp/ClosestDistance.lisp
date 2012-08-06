; Auto-generated. Do not edit!


(cl:in-package Project2Sample-srv)


;//! \htmlinclude ClosestDistance-request.msg.html

(cl:defclass <ClosestDistance-request> (roslisp-msg-protocol:ros-message)
  ((x_position
    :reader x_position
    :initarg :x_position
    :type cl:float
    :initform 0.0)
   (y_position
    :reader y_position
    :initarg :y_position
    :type cl:float
    :initform 0.0))
)

(cl:defclass ClosestDistance-request (<ClosestDistance-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ClosestDistance-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ClosestDistance-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name Project2Sample-srv:<ClosestDistance-request> is deprecated: use Project2Sample-srv:ClosestDistance-request instead.")))

(cl:ensure-generic-function 'x_position-val :lambda-list '(m))
(cl:defmethod x_position-val ((m <ClosestDistance-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Project2Sample-srv:x_position-val is deprecated.  Use Project2Sample-srv:x_position instead.")
  (x_position m))

(cl:ensure-generic-function 'y_position-val :lambda-list '(m))
(cl:defmethod y_position-val ((m <ClosestDistance-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Project2Sample-srv:y_position-val is deprecated.  Use Project2Sample-srv:y_position instead.")
  (y_position m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ClosestDistance-request>) ostream)
  "Serializes a message object of type '<ClosestDistance-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'x_position))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'y_position))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ClosestDistance-request>) istream)
  "Deserializes a message object of type '<ClosestDistance-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x_position) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y_position) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ClosestDistance-request>)))
  "Returns string type for a service object of type '<ClosestDistance-request>"
  "Project2Sample/ClosestDistanceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClosestDistance-request)))
  "Returns string type for a service object of type 'ClosestDistance-request"
  "Project2Sample/ClosestDistanceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ClosestDistance-request>)))
  "Returns md5sum for a message object of type '<ClosestDistance-request>"
  "a51d15d745b78ee74ccf7ca02ce5a2f1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ClosestDistance-request)))
  "Returns md5sum for a message object of type 'ClosestDistance-request"
  "a51d15d745b78ee74ccf7ca02ce5a2f1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ClosestDistance-request>)))
  "Returns full string definition for message of type '<ClosestDistance-request>"
  (cl:format cl:nil "float64 x_position~%float64 y_position~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ClosestDistance-request)))
  "Returns full string definition for message of type 'ClosestDistance-request"
  (cl:format cl:nil "float64 x_position~%float64 y_position~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ClosestDistance-request>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ClosestDistance-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ClosestDistance-request
    (cl:cons ':x_position (x_position msg))
    (cl:cons ':y_position (y_position msg))
))
;//! \htmlinclude ClosestDistance-response.msg.html

(cl:defclass <ClosestDistance-response> (roslisp-msg-protocol:ros-message)
  ((Robot_ID
    :reader Robot_ID
    :initarg :Robot_ID
    :type cl:integer
    :initform 0))
)

(cl:defclass ClosestDistance-response (<ClosestDistance-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ClosestDistance-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ClosestDistance-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name Project2Sample-srv:<ClosestDistance-response> is deprecated: use Project2Sample-srv:ClosestDistance-response instead.")))

(cl:ensure-generic-function 'Robot_ID-val :lambda-list '(m))
(cl:defmethod Robot_ID-val ((m <ClosestDistance-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Project2Sample-srv:Robot_ID-val is deprecated.  Use Project2Sample-srv:Robot_ID instead.")
  (Robot_ID m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ClosestDistance-response>) ostream)
  "Serializes a message object of type '<ClosestDistance-response>"
  (cl:let* ((signed (cl:slot-value msg 'Robot_ID)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ClosestDistance-response>) istream)
  "Deserializes a message object of type '<ClosestDistance-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Robot_ID) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ClosestDistance-response>)))
  "Returns string type for a service object of type '<ClosestDistance-response>"
  "Project2Sample/ClosestDistanceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClosestDistance-response)))
  "Returns string type for a service object of type 'ClosestDistance-response"
  "Project2Sample/ClosestDistanceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ClosestDistance-response>)))
  "Returns md5sum for a message object of type '<ClosestDistance-response>"
  "a51d15d745b78ee74ccf7ca02ce5a2f1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ClosestDistance-response)))
  "Returns md5sum for a message object of type 'ClosestDistance-response"
  "a51d15d745b78ee74ccf7ca02ce5a2f1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ClosestDistance-response>)))
  "Returns full string definition for message of type '<ClosestDistance-response>"
  (cl:format cl:nil "int64 Robot_ID~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ClosestDistance-response)))
  "Returns full string definition for message of type 'ClosestDistance-response"
  (cl:format cl:nil "int64 Robot_ID~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ClosestDistance-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ClosestDistance-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ClosestDistance-response
    (cl:cons ':Robot_ID (Robot_ID msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ClosestDistance)))
  'ClosestDistance-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ClosestDistance)))
  'ClosestDistance-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClosestDistance)))
  "Returns string type for a service object of type '<ClosestDistance>"
  "Project2Sample/ClosestDistance")