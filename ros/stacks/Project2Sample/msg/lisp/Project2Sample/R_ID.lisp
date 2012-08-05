; Auto-generated. Do not edit!


(in-package Project2Sample-msg)


;//! \htmlinclude R_ID.msg.html

(defclass <R_ID> (ros-message)
  ((R_ID
    :reader R_ID-val
    :initarg :R_ID
    :type integer
    :initform 0)
   (life
    :reader life-val
    :initarg :life
    :type integer
    :initform 0)
   (x
    :reader x-val
    :initarg :x
    :type float
    :initform 0.0)
   (y
    :reader y-val
    :initarg :y
    :type float
    :initform 0.0)
   (theta
    :reader theta-val
    :initarg :theta
    :type float
    :initform 0.0))
)
(defmethod serialize ((msg <R_ID>) ostream)
  "Serializes a message object of type '<R_ID>"
    (write-byte (ldb (byte 8 0) (slot-value msg 'R_ID)) ostream)
  (write-byte (ldb (byte 8 8) (slot-value msg 'R_ID)) ostream)
  (write-byte (ldb (byte 8 16) (slot-value msg 'R_ID)) ostream)
  (write-byte (ldb (byte 8 24) (slot-value msg 'R_ID)) ostream)
  (write-byte (ldb (byte 8 32) (slot-value msg 'R_ID)) ostream)
  (write-byte (ldb (byte 8 40) (slot-value msg 'R_ID)) ostream)
  (write-byte (ldb (byte 8 48) (slot-value msg 'R_ID)) ostream)
  (write-byte (ldb (byte 8 56) (slot-value msg 'R_ID)) ostream)
    (write-byte (ldb (byte 8 0) (slot-value msg 'life)) ostream)
  (write-byte (ldb (byte 8 8) (slot-value msg 'life)) ostream)
  (write-byte (ldb (byte 8 16) (slot-value msg 'life)) ostream)
  (write-byte (ldb (byte 8 24) (slot-value msg 'life)) ostream)
  (write-byte (ldb (byte 8 32) (slot-value msg 'life)) ostream)
  (write-byte (ldb (byte 8 40) (slot-value msg 'life)) ostream)
  (write-byte (ldb (byte 8 48) (slot-value msg 'life)) ostream)
  (write-byte (ldb (byte 8 56) (slot-value msg 'life)) ostream)
  (let ((bits (roslisp-utils:encode-double-float-bits (slot-value msg 'x))))
    (write-byte (ldb (byte 8 0) bits) ostream)
    (write-byte (ldb (byte 8 8) bits) ostream)
    (write-byte (ldb (byte 8 16) bits) ostream)
    (write-byte (ldb (byte 8 24) bits) ostream)
    (write-byte (ldb (byte 8 32) bits) ostream)
    (write-byte (ldb (byte 8 40) bits) ostream)
    (write-byte (ldb (byte 8 48) bits) ostream)
    (write-byte (ldb (byte 8 56) bits) ostream))
  (let ((bits (roslisp-utils:encode-double-float-bits (slot-value msg 'y))))
    (write-byte (ldb (byte 8 0) bits) ostream)
    (write-byte (ldb (byte 8 8) bits) ostream)
    (write-byte (ldb (byte 8 16) bits) ostream)
    (write-byte (ldb (byte 8 24) bits) ostream)
    (write-byte (ldb (byte 8 32) bits) ostream)
    (write-byte (ldb (byte 8 40) bits) ostream)
    (write-byte (ldb (byte 8 48) bits) ostream)
    (write-byte (ldb (byte 8 56) bits) ostream))
  (let ((bits (roslisp-utils:encode-double-float-bits (slot-value msg 'theta))))
    (write-byte (ldb (byte 8 0) bits) ostream)
    (write-byte (ldb (byte 8 8) bits) ostream)
    (write-byte (ldb (byte 8 16) bits) ostream)
    (write-byte (ldb (byte 8 24) bits) ostream)
    (write-byte (ldb (byte 8 32) bits) ostream)
    (write-byte (ldb (byte 8 40) bits) ostream)
    (write-byte (ldb (byte 8 48) bits) ostream)
    (write-byte (ldb (byte 8 56) bits) ostream))
)
(defmethod deserialize ((msg <R_ID>) istream)
  "Deserializes a message object of type '<R_ID>"
  (setf (ldb (byte 8 0) (slot-value msg 'R_ID)) (read-byte istream))
  (setf (ldb (byte 8 8) (slot-value msg 'R_ID)) (read-byte istream))
  (setf (ldb (byte 8 16) (slot-value msg 'R_ID)) (read-byte istream))
  (setf (ldb (byte 8 24) (slot-value msg 'R_ID)) (read-byte istream))
  (setf (ldb (byte 8 32) (slot-value msg 'R_ID)) (read-byte istream))
  (setf (ldb (byte 8 40) (slot-value msg 'R_ID)) (read-byte istream))
  (setf (ldb (byte 8 48) (slot-value msg 'R_ID)) (read-byte istream))
  (setf (ldb (byte 8 56) (slot-value msg 'R_ID)) (read-byte istream))
  (setf (ldb (byte 8 0) (slot-value msg 'life)) (read-byte istream))
  (setf (ldb (byte 8 8) (slot-value msg 'life)) (read-byte istream))
  (setf (ldb (byte 8 16) (slot-value msg 'life)) (read-byte istream))
  (setf (ldb (byte 8 24) (slot-value msg 'life)) (read-byte istream))
  (setf (ldb (byte 8 32) (slot-value msg 'life)) (read-byte istream))
  (setf (ldb (byte 8 40) (slot-value msg 'life)) (read-byte istream))
  (setf (ldb (byte 8 48) (slot-value msg 'life)) (read-byte istream))
  (setf (ldb (byte 8 56) (slot-value msg 'life)) (read-byte istream))
  (let ((bits 0))
    (setf (ldb (byte 8 0) bits) (read-byte istream))
    (setf (ldb (byte 8 8) bits) (read-byte istream))
    (setf (ldb (byte 8 16) bits) (read-byte istream))
    (setf (ldb (byte 8 24) bits) (read-byte istream))
    (setf (ldb (byte 8 32) bits) (read-byte istream))
    (setf (ldb (byte 8 40) bits) (read-byte istream))
    (setf (ldb (byte 8 48) bits) (read-byte istream))
    (setf (ldb (byte 8 56) bits) (read-byte istream))
    (setf (slot-value msg 'x) (roslisp-utils:decode-double-float-bits bits)))
  (let ((bits 0))
    (setf (ldb (byte 8 0) bits) (read-byte istream))
    (setf (ldb (byte 8 8) bits) (read-byte istream))
    (setf (ldb (byte 8 16) bits) (read-byte istream))
    (setf (ldb (byte 8 24) bits) (read-byte istream))
    (setf (ldb (byte 8 32) bits) (read-byte istream))
    (setf (ldb (byte 8 40) bits) (read-byte istream))
    (setf (ldb (byte 8 48) bits) (read-byte istream))
    (setf (ldb (byte 8 56) bits) (read-byte istream))
    (setf (slot-value msg 'y) (roslisp-utils:decode-double-float-bits bits)))
  (let ((bits 0))
    (setf (ldb (byte 8 0) bits) (read-byte istream))
    (setf (ldb (byte 8 8) bits) (read-byte istream))
    (setf (ldb (byte 8 16) bits) (read-byte istream))
    (setf (ldb (byte 8 24) bits) (read-byte istream))
    (setf (ldb (byte 8 32) bits) (read-byte istream))
    (setf (ldb (byte 8 40) bits) (read-byte istream))
    (setf (ldb (byte 8 48) bits) (read-byte istream))
    (setf (ldb (byte 8 56) bits) (read-byte istream))
    (setf (slot-value msg 'theta) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(defmethod ros-datatype ((msg (eql '<R_ID>)))
  "Returns string type for a message object of type '<R_ID>"
  "Project2Sample/R_ID")
(defmethod md5sum ((type (eql '<R_ID>)))
  "Returns md5sum for a message object of type '<R_ID>"
  "68ae84a955e4de598c458bb110aab2e5")
(defmethod message-definition ((type (eql '<R_ID>)))
  "Returns full string definition for message of type '<R_ID>"
  (format nil "int64 R_ID~%int64 life~%float64 x~%float64 y~%float64 theta~%~%~%"))
(defmethod serialization-length ((msg <R_ID>))
  (+ 0
     8
     8
     8
     8
     8
))
(defmethod ros-message-to-list ((msg <R_ID>))
  "Converts a ROS message object to a list"
  (list '<R_ID>
    (cons ':R_ID (R_ID-val msg))
    (cons ':life (life-val msg))
    (cons ':x (x-val msg))
    (cons ':y (y-val msg))
    (cons ':theta (theta-val msg))
))
