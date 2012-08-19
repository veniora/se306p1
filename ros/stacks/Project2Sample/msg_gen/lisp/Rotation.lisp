; Auto-generated. Do not edit!


(cl:in-package Project2Sample-msg)


;//! \htmlinclude Rotation.msg.html

(cl:defclass <Rotation> (roslisp-msg-protocol:ros-message)
  ((R_ID
    :reader R_ID
    :initarg :R_ID
    :type cl:integer
    :initform 0)
   (oldx
    :reader oldx
    :initarg :oldx
    :type cl:float
    :initform 0.0)
   (oldy
    :reader oldy
    :initarg :oldy
    :type cl:float
    :initform 0.0)
   (newx
    :reader newx
    :initarg :newx
    :type cl:float
    :initform 0.0)
   (newy
    :reader newy
    :initarg :newy
    :type cl:float
    :initform 0.0))
)

(cl:defclass Rotation (<Rotation>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Rotation>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Rotation)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name Project2Sample-msg:<Rotation> is deprecated: use Project2Sample-msg:Rotation instead.")))

(cl:ensure-generic-function 'R_ID-val :lambda-list '(m))
(cl:defmethod R_ID-val ((m <Rotation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Project2Sample-msg:R_ID-val is deprecated.  Use Project2Sample-msg:R_ID instead.")
  (R_ID m))

(cl:ensure-generic-function 'oldx-val :lambda-list '(m))
(cl:defmethod oldx-val ((m <Rotation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Project2Sample-msg:oldx-val is deprecated.  Use Project2Sample-msg:oldx instead.")
  (oldx m))

(cl:ensure-generic-function 'oldy-val :lambda-list '(m))
(cl:defmethod oldy-val ((m <Rotation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Project2Sample-msg:oldy-val is deprecated.  Use Project2Sample-msg:oldy instead.")
  (oldy m))

(cl:ensure-generic-function 'newx-val :lambda-list '(m))
(cl:defmethod newx-val ((m <Rotation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Project2Sample-msg:newx-val is deprecated.  Use Project2Sample-msg:newx instead.")
  (newx m))

(cl:ensure-generic-function 'newy-val :lambda-list '(m))
(cl:defmethod newy-val ((m <Rotation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Project2Sample-msg:newy-val is deprecated.  Use Project2Sample-msg:newy instead.")
  (newy m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Rotation>) ostream)
  "Serializes a message object of type '<Rotation>"
  (cl:let* ((signed (cl:slot-value msg 'R_ID)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'oldx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'oldy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'newx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'newy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Rotation>) istream)
  "Deserializes a message object of type '<Rotation>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'R_ID) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'oldx) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'oldy) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'newx) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'newy) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Rotation>)))
  "Returns string type for a message object of type '<Rotation>"
  "Project2Sample/Rotation")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Rotation)))
  "Returns string type for a message object of type 'Rotation"
  "Project2Sample/Rotation")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Rotation>)))
  "Returns md5sum for a message object of type '<Rotation>"
  "18977f85e8cc6df4b534dee960292b05")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Rotation)))
  "Returns md5sum for a message object of type 'Rotation"
  "18977f85e8cc6df4b534dee960292b05")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Rotation>)))
  "Returns full string definition for message of type '<Rotation>"
  (cl:format cl:nil "int64 R_ID~%float64 oldx~%float64 oldy~%float64 newx~%float64 newy~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Rotation)))
  "Returns full string definition for message of type 'Rotation"
  (cl:format cl:nil "int64 R_ID~%float64 oldx~%float64 oldy~%float64 newx~%float64 newy~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Rotation>))
  (cl:+ 0
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Rotation>))
  "Converts a ROS message object to a list"
  (cl:list 'Rotation
    (cl:cons ':R_ID (R_ID msg))
    (cl:cons ':oldx (oldx msg))
    (cl:cons ':oldy (oldy msg))
    (cl:cons ':newx (newx msg))
    (cl:cons ':newy (newy msg))
))
