; Auto-generated. Do not edit!


(cl:in-package kinova_optimization-msg)


;//! \htmlinclude EEPoseGoals.msg.html

(cl:defclass <EEPoseGoals> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (ee_poses
    :reader ee_poses
    :initarg :ee_poses
    :type (cl:vector geometry_msgs-msg:Pose)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Pose :initial-element (cl:make-instance 'geometry_msgs-msg:Pose)))
   (notes
    :reader notes
    :initarg :notes
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String)))
)

(cl:defclass EEPoseGoals (<EEPoseGoals>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EEPoseGoals>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EEPoseGoals)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kinova_optimization-msg:<EEPoseGoals> is deprecated: use kinova_optimization-msg:EEPoseGoals instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <EEPoseGoals>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinova_optimization-msg:header-val is deprecated.  Use kinova_optimization-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'ee_poses-val :lambda-list '(m))
(cl:defmethod ee_poses-val ((m <EEPoseGoals>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinova_optimization-msg:ee_poses-val is deprecated.  Use kinova_optimization-msg:ee_poses instead.")
  (ee_poses m))

(cl:ensure-generic-function 'notes-val :lambda-list '(m))
(cl:defmethod notes-val ((m <EEPoseGoals>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinova_optimization-msg:notes-val is deprecated.  Use kinova_optimization-msg:notes instead.")
  (notes m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EEPoseGoals>) ostream)
  "Serializes a message object of type '<EEPoseGoals>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'ee_poses))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'ee_poses))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'notes) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EEPoseGoals>) istream)
  "Deserializes a message object of type '<EEPoseGoals>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'ee_poses) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'ee_poses)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Pose))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'notes) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EEPoseGoals>)))
  "Returns string type for a message object of type '<EEPoseGoals>"
  "kinova_optimization/EEPoseGoals")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EEPoseGoals)))
  "Returns string type for a message object of type 'EEPoseGoals"
  "kinova_optimization/EEPoseGoals")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EEPoseGoals>)))
  "Returns md5sum for a message object of type '<EEPoseGoals>"
  "14aacdbd9d7a6b8e724da6e9adec2778")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EEPoseGoals)))
  "Returns md5sum for a message object of type 'EEPoseGoals"
  "14aacdbd9d7a6b8e724da6e9adec2778")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EEPoseGoals>)))
  "Returns full string definition for message of type '<EEPoseGoals>"
  (cl:format cl:nil "std_msgs/Header header~%geometry_msgs/Pose[] ee_poses~%std_msgs/String notes~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EEPoseGoals)))
  "Returns full string definition for message of type 'EEPoseGoals"
  (cl:format cl:nil "std_msgs/Header header~%geometry_msgs/Pose[] ee_poses~%std_msgs/String notes~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EEPoseGoals>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'ee_poses) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'notes))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EEPoseGoals>))
  "Converts a ROS message object to a list"
  (cl:list 'EEPoseGoals
    (cl:cons ':header (header msg))
    (cl:cons ':ee_poses (ee_poses msg))
    (cl:cons ':notes (notes msg))
))
