; Auto-generated. Do not edit!


(cl:in-package kinova_optimization-msg)


;//! \htmlinclude JointAngles.msg.html

(cl:defclass <JointAngles> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (angles
    :reader angles
    :initarg :angles
    :type std_msgs-msg:Float64MultiArray
    :initform (cl:make-instance 'std_msgs-msg:Float64MultiArray))
   (notes
    :reader notes
    :initarg :notes
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String)))
)

(cl:defclass JointAngles (<JointAngles>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JointAngles>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JointAngles)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kinova_optimization-msg:<JointAngles> is deprecated: use kinova_optimization-msg:JointAngles instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <JointAngles>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinova_optimization-msg:header-val is deprecated.  Use kinova_optimization-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'angles-val :lambda-list '(m))
(cl:defmethod angles-val ((m <JointAngles>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinova_optimization-msg:angles-val is deprecated.  Use kinova_optimization-msg:angles instead.")
  (angles m))

(cl:ensure-generic-function 'notes-val :lambda-list '(m))
(cl:defmethod notes-val ((m <JointAngles>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinova_optimization-msg:notes-val is deprecated.  Use kinova_optimization-msg:notes instead.")
  (notes m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JointAngles>) ostream)
  "Serializes a message object of type '<JointAngles>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'angles) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'notes) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JointAngles>) istream)
  "Deserializes a message object of type '<JointAngles>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'angles) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'notes) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JointAngles>)))
  "Returns string type for a message object of type '<JointAngles>"
  "kinova_optimization/JointAngles")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JointAngles)))
  "Returns string type for a message object of type 'JointAngles"
  "kinova_optimization/JointAngles")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JointAngles>)))
  "Returns md5sum for a message object of type '<JointAngles>"
  "da0d0aed462d0b8c5491933ab5458fde")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JointAngles)))
  "Returns md5sum for a message object of type 'JointAngles"
  "da0d0aed462d0b8c5491933ab5458fde")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JointAngles>)))
  "Returns full string definition for message of type '<JointAngles>"
  (cl:format cl:nil "std_msgs/Header header~%std_msgs/Float64MultiArray angles~%std_msgs/String notes~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/Float64MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%float64[]         data          # array of data~%~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JointAngles)))
  "Returns full string definition for message of type 'JointAngles"
  (cl:format cl:nil "std_msgs/Header header~%std_msgs/Float64MultiArray angles~%std_msgs/String notes~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/Float64MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%float64[]         data          # array of data~%~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JointAngles>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'angles))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'notes))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JointAngles>))
  "Converts a ROS message object to a list"
  (cl:list 'JointAngles
    (cl:cons ':header (header msg))
    (cl:cons ':angles (angles msg))
    (cl:cons ':notes (notes msg))
))
