; Auto-generated. Do not edit!


(cl:in-package Project2Sample-srv)


;//! \htmlinclude returnPosition-request.msg.html

(cl:defclass <returnPosition-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass returnPosition-request (<returnPosition-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <returnPosition-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'returnPosition-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name Project2Sample-srv:<returnPosition-request> is deprecated: use Project2Sample-srv:returnPosition-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <returnPosition-request>) ostream)
  "Serializes a message object of type '<returnPosition-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <returnPosition-request>) istream)
  "Deserializes a message object of type '<returnPosition-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<returnPosition-request>)))
  "Returns string type for a service object of type '<returnPosition-request>"
  "Project2Sample/returnPositionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'returnPosition-request)))
  "Returns string type for a service object of type 'returnPosition-request"
  "Project2Sample/returnPositionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<returnPosition-request>)))
  "Returns md5sum for a message object of type '<returnPosition-request>"
  "938fa65709584ad8e77d238529be13b8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'returnPosition-request)))
  "Returns md5sum for a message object of type 'returnPosition-request"
  "938fa65709584ad8e77d238529be13b8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<returnPosition-request>)))
  "Returns full string definition for message of type '<returnPosition-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'returnPosition-request)))
  "Returns full string definition for message of type 'returnPosition-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <returnPosition-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <returnPosition-request>))
  "Converts a ROS message object to a list"
  (cl:list 'returnPosition-request
))
;//! \htmlinclude returnPosition-response.msg.html

(cl:defclass <returnPosition-response> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (theta
    :reader theta
    :initarg :theta
    :type cl:float
    :initform 0.0))
)

(cl:defclass returnPosition-response (<returnPosition-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <returnPosition-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'returnPosition-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name Project2Sample-srv:<returnPosition-response> is deprecated: use Project2Sample-srv:returnPosition-response instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <returnPosition-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Project2Sample-srv:x-val is deprecated.  Use Project2Sample-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <returnPosition-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Project2Sample-srv:y-val is deprecated.  Use Project2Sample-srv:y instead.")
  (y m))

(cl:ensure-generic-function 'theta-val :lambda-list '(m))
(cl:defmethod theta-val ((m <returnPosition-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Project2Sample-srv:theta-val is deprecated.  Use Project2Sample-srv:theta instead.")
  (theta m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <returnPosition-response>) ostream)
  "Serializes a message object of type '<returnPosition-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'theta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <returnPosition-response>) istream)
  "Deserializes a message object of type '<returnPosition-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'theta) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<returnPosition-response>)))
  "Returns string type for a service object of type '<returnPosition-response>"
  "Project2Sample/returnPositionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'returnPosition-response)))
  "Returns string type for a service object of type 'returnPosition-response"
  "Project2Sample/returnPositionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<returnPosition-response>)))
  "Returns md5sum for a message object of type '<returnPosition-response>"
  "938fa65709584ad8e77d238529be13b8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'returnPosition-response)))
  "Returns md5sum for a message object of type 'returnPosition-response"
  "938fa65709584ad8e77d238529be13b8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<returnPosition-response>)))
  "Returns full string definition for message of type '<returnPosition-response>"
  (cl:format cl:nil "float64 x~%float64 y~%float64 theta~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'returnPosition-response)))
  "Returns full string definition for message of type 'returnPosition-response"
  (cl:format cl:nil "float64 x~%float64 y~%float64 theta~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <returnPosition-response>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <returnPosition-response>))
  "Converts a ROS message object to a list"
  (cl:list 'returnPosition-response
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':theta (theta msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'returnPosition)))
  'returnPosition-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'returnPosition)))
  'returnPosition-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'returnPosition)))
  "Returns string type for a service object of type '<returnPosition>"
  "Project2Sample/returnPosition")