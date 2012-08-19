; Auto-generated. Do not edit!


(cl:in-package Project2Sample-msg)


;//! \htmlinclude VelocityInstructions.msg.html

(cl:defclass <VelocityInstructions> (roslisp-msg-protocol:ros-message)
  ((linearV
    :reader linearV
    :initarg :linearV
    :type cl:float
    :initform 0.0)
   (angularV
    :reader angularV
    :initarg :angularV
    :type cl:float
    :initform 0.0))
)

(cl:defclass VelocityInstructions (<VelocityInstructions>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VelocityInstructions>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VelocityInstructions)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name Project2Sample-msg:<VelocityInstructions> is deprecated: use Project2Sample-msg:VelocityInstructions instead.")))

(cl:ensure-generic-function 'linearV-val :lambda-list '(m))
(cl:defmethod linearV-val ((m <VelocityInstructions>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Project2Sample-msg:linearV-val is deprecated.  Use Project2Sample-msg:linearV instead.")
  (linearV m))

(cl:ensure-generic-function 'angularV-val :lambda-list '(m))
(cl:defmethod angularV-val ((m <VelocityInstructions>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Project2Sample-msg:angularV-val is deprecated.  Use Project2Sample-msg:angularV instead.")
  (angularV m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VelocityInstructions>) ostream)
  "Serializes a message object of type '<VelocityInstructions>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'linearV))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'angularV))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VelocityInstructions>) istream)
  "Deserializes a message object of type '<VelocityInstructions>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'linearV) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angularV) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VelocityInstructions>)))
  "Returns string type for a message object of type '<VelocityInstructions>"
  "Project2Sample/VelocityInstructions")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VelocityInstructions)))
  "Returns string type for a message object of type 'VelocityInstructions"
  "Project2Sample/VelocityInstructions")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VelocityInstructions>)))
  "Returns md5sum for a message object of type '<VelocityInstructions>"
  "375c38002a3bdf6dbd092670630f2c8d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VelocityInstructions)))
  "Returns md5sum for a message object of type 'VelocityInstructions"
  "375c38002a3bdf6dbd092670630f2c8d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VelocityInstructions>)))
  "Returns full string definition for message of type '<VelocityInstructions>"
  (cl:format cl:nil "float64 linearV~%float64 angularV~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VelocityInstructions)))
  "Returns full string definition for message of type 'VelocityInstructions"
  (cl:format cl:nil "float64 linearV~%float64 angularV~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VelocityInstructions>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VelocityInstructions>))
  "Converts a ROS message object to a list"
  (cl:list 'VelocityInstructions
    (cl:cons ':linearV (linearV msg))
    (cl:cons ':angularV (angularV msg))
))
