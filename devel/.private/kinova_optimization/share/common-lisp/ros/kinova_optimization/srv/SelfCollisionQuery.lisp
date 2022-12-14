; Auto-generated. Do not edit!


(cl:in-package kinova_optimization-srv)


;//! \htmlinclude SelfCollisionQuery-request.msg.html

(cl:defclass <SelfCollisionQuery-request> (roslisp-msg-protocol:ros-message)
  ((query_state
    :reader query_state
    :initarg :query_state
    :type kinova_optimization-msg:JointAngles
    :initform (cl:make-instance 'kinova_optimization-msg:JointAngles)))
)

(cl:defclass SelfCollisionQuery-request (<SelfCollisionQuery-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SelfCollisionQuery-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SelfCollisionQuery-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kinova_optimization-srv:<SelfCollisionQuery-request> is deprecated: use kinova_optimization-srv:SelfCollisionQuery-request instead.")))

(cl:ensure-generic-function 'query_state-val :lambda-list '(m))
(cl:defmethod query_state-val ((m <SelfCollisionQuery-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinova_optimization-srv:query_state-val is deprecated.  Use kinova_optimization-srv:query_state instead.")
  (query_state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SelfCollisionQuery-request>) ostream)
  "Serializes a message object of type '<SelfCollisionQuery-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'query_state) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SelfCollisionQuery-request>) istream)
  "Deserializes a message object of type '<SelfCollisionQuery-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'query_state) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SelfCollisionQuery-request>)))
  "Returns string type for a service object of type '<SelfCollisionQuery-request>"
  "kinova_optimization/SelfCollisionQueryRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SelfCollisionQuery-request)))
  "Returns string type for a service object of type 'SelfCollisionQuery-request"
  "kinova_optimization/SelfCollisionQueryRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SelfCollisionQuery-request>)))
  "Returns md5sum for a message object of type '<SelfCollisionQuery-request>"
  "8c05d24c55da04c87f44aab507c5f376")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SelfCollisionQuery-request)))
  "Returns md5sum for a message object of type 'SelfCollisionQuery-request"
  "8c05d24c55da04c87f44aab507c5f376")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SelfCollisionQuery-request>)))
  "Returns full string definition for message of type '<SelfCollisionQuery-request>"
  (cl:format cl:nil "kinova_optimization/JointAngles query_state~%~%================================================================================~%MSG: kinova_optimization/JointAngles~%std_msgs/Header header~%std_msgs/Float64MultiArray angles~%std_msgs/String notes~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/Float64MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%float64[]         data          # array of data~%~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SelfCollisionQuery-request)))
  "Returns full string definition for message of type 'SelfCollisionQuery-request"
  (cl:format cl:nil "kinova_optimization/JointAngles query_state~%~%================================================================================~%MSG: kinova_optimization/JointAngles~%std_msgs/Header header~%std_msgs/Float64MultiArray angles~%std_msgs/String notes~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/Float64MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%float64[]         data          # array of data~%~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SelfCollisionQuery-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'query_state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SelfCollisionQuery-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SelfCollisionQuery-request
    (cl:cons ':query_state (query_state msg))
))
;//! \htmlinclude SelfCollisionQuery-response.msg.html

(cl:defclass <SelfCollisionQuery-response> (roslisp-msg-protocol:ros-message)
  ((in_collision
    :reader in_collision
    :initarg :in_collision
    :type std_msgs-msg:Bool
    :initform (cl:make-instance 'std_msgs-msg:Bool)))
)

(cl:defclass SelfCollisionQuery-response (<SelfCollisionQuery-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SelfCollisionQuery-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SelfCollisionQuery-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kinova_optimization-srv:<SelfCollisionQuery-response> is deprecated: use kinova_optimization-srv:SelfCollisionQuery-response instead.")))

(cl:ensure-generic-function 'in_collision-val :lambda-list '(m))
(cl:defmethod in_collision-val ((m <SelfCollisionQuery-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinova_optimization-srv:in_collision-val is deprecated.  Use kinova_optimization-srv:in_collision instead.")
  (in_collision m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SelfCollisionQuery-response>) ostream)
  "Serializes a message object of type '<SelfCollisionQuery-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'in_collision) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SelfCollisionQuery-response>) istream)
  "Deserializes a message object of type '<SelfCollisionQuery-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'in_collision) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SelfCollisionQuery-response>)))
  "Returns string type for a service object of type '<SelfCollisionQuery-response>"
  "kinova_optimization/SelfCollisionQueryResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SelfCollisionQuery-response)))
  "Returns string type for a service object of type 'SelfCollisionQuery-response"
  "kinova_optimization/SelfCollisionQueryResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SelfCollisionQuery-response>)))
  "Returns md5sum for a message object of type '<SelfCollisionQuery-response>"
  "8c05d24c55da04c87f44aab507c5f376")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SelfCollisionQuery-response)))
  "Returns md5sum for a message object of type 'SelfCollisionQuery-response"
  "8c05d24c55da04c87f44aab507c5f376")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SelfCollisionQuery-response>)))
  "Returns full string definition for message of type '<SelfCollisionQuery-response>"
  (cl:format cl:nil "std_msgs/Bool in_collision~%~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SelfCollisionQuery-response)))
  "Returns full string definition for message of type 'SelfCollisionQuery-response"
  (cl:format cl:nil "std_msgs/Bool in_collision~%~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SelfCollisionQuery-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'in_collision))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SelfCollisionQuery-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SelfCollisionQuery-response
    (cl:cons ':in_collision (in_collision msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SelfCollisionQuery)))
  'SelfCollisionQuery-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SelfCollisionQuery)))
  'SelfCollisionQuery-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SelfCollisionQuery)))
  "Returns string type for a service object of type '<SelfCollisionQuery>"
  "kinova_optimization/SelfCollisionQuery")