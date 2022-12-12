;; Auto-generated. Do not edit!


(when (boundp 'kinova_optimization::SelfCollisionQuery)
  (if (not (find-package "KINOVA_OPTIMIZATION"))
    (make-package "KINOVA_OPTIMIZATION"))
  (shadow 'SelfCollisionQuery (find-package "KINOVA_OPTIMIZATION")))
(unless (find-package "KINOVA_OPTIMIZATION::SELFCOLLISIONQUERY")
  (make-package "KINOVA_OPTIMIZATION::SELFCOLLISIONQUERY"))
(unless (find-package "KINOVA_OPTIMIZATION::SELFCOLLISIONQUERYREQUEST")
  (make-package "KINOVA_OPTIMIZATION::SELFCOLLISIONQUERYREQUEST"))
(unless (find-package "KINOVA_OPTIMIZATION::SELFCOLLISIONQUERYRESPONSE")
  (make-package "KINOVA_OPTIMIZATION::SELFCOLLISIONQUERYRESPONSE"))

(in-package "ROS")



(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass kinova_optimization::SelfCollisionQueryRequest
  :super ros::object
  :slots (_query_state ))

(defmethod kinova_optimization::SelfCollisionQueryRequest
  (:init
   (&key
    ((:query_state __query_state) (instance kinova_optimization::JointAngles :init))
    )
   (send-super :init)
   (setq _query_state __query_state)
   self)
  (:query_state
   (&rest __query_state)
   (if (keywordp (car __query_state))
       (send* _query_state __query_state)
     (progn
       (if __query_state (setq _query_state (car __query_state)))
       _query_state)))
  (:serialization-length
   ()
   (+
    ;; kinova_optimization/JointAngles _query_state
    (send _query_state :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; kinova_optimization/JointAngles _query_state
       (send _query_state :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; kinova_optimization/JointAngles _query_state
     (send _query_state :deserialize buf ptr-) (incf ptr- (send _query_state :serialization-length))
   ;;
   self)
  )

(defclass kinova_optimization::SelfCollisionQueryResponse
  :super ros::object
  :slots (_in_collision ))

(defmethod kinova_optimization::SelfCollisionQueryResponse
  (:init
   (&key
    ((:in_collision __in_collision) (instance std_msgs::Bool :init))
    )
   (send-super :init)
   (setq _in_collision __in_collision)
   self)
  (:in_collision
   (&rest __in_collision)
   (if (keywordp (car __in_collision))
       (send* _in_collision __in_collision)
     (progn
       (if __in_collision (setq _in_collision (car __in_collision)))
       _in_collision)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Bool _in_collision
    (send _in_collision :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Bool _in_collision
       (send _in_collision :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Bool _in_collision
     (send _in_collision :deserialize buf ptr-) (incf ptr- (send _in_collision :serialization-length))
   ;;
   self)
  )

(defclass kinova_optimization::SelfCollisionQuery
  :super ros::object
  :slots ())

(setf (get kinova_optimization::SelfCollisionQuery :md5sum-) "8c05d24c55da04c87f44aab507c5f376")
(setf (get kinova_optimization::SelfCollisionQuery :datatype-) "kinova_optimization/SelfCollisionQuery")
(setf (get kinova_optimization::SelfCollisionQuery :request) kinova_optimization::SelfCollisionQueryRequest)
(setf (get kinova_optimization::SelfCollisionQuery :response) kinova_optimization::SelfCollisionQueryResponse)

(defmethod kinova_optimization::SelfCollisionQueryRequest
  (:response () (instance kinova_optimization::SelfCollisionQueryResponse :init)))

(setf (get kinova_optimization::SelfCollisionQueryRequest :md5sum-) "8c05d24c55da04c87f44aab507c5f376")
(setf (get kinova_optimization::SelfCollisionQueryRequest :datatype-) "kinova_optimization/SelfCollisionQueryRequest")
(setf (get kinova_optimization::SelfCollisionQueryRequest :definition-)
      "kinova_optimization/JointAngles query_state

================================================================================
MSG: kinova_optimization/JointAngles
std_msgs/Header header
std_msgs/Float64MultiArray angles
std_msgs/String notes

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: std_msgs/Float64MultiArray
# Please look at the MultiArrayLayout message definition for
# documentation on all multiarrays.

MultiArrayLayout  layout        # specification of data layout
float64[]         data          # array of data


================================================================================
MSG: std_msgs/MultiArrayLayout
# The multiarray declares a generic multi-dimensional array of a
# particular data type.  Dimensions are ordered from outer most
# to inner most.

MultiArrayDimension[] dim # Array of dimension properties
uint32 data_offset        # padding elements at front of data

# Accessors should ALWAYS be written in terms of dimension stride
# and specified outer-most dimension first.
# 
# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]
#
# A standard, 3-channel 640x480 image with interleaved color channels
# would be specified as:
#
# dim[0].label  = \"height\"
# dim[0].size   = 480
# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)
# dim[1].label  = \"width\"
# dim[1].size   = 640
# dim[1].stride = 3*640 = 1920
# dim[2].label  = \"channel\"
# dim[2].size   = 3
# dim[2].stride = 3
#
# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.

================================================================================
MSG: std_msgs/MultiArrayDimension
string label   # label of given dimension
uint32 size    # size of given dimension (in type units)
uint32 stride  # stride of given dimension
================================================================================
MSG: std_msgs/String
string data
---
std_msgs/Bool in_collision


================================================================================
MSG: std_msgs/Bool
")

(setf (get kinova_optimization::SelfCollisionQueryResponse :md5sum-) "8c05d24c55da04c87f44aab507c5f376")
(setf (get kinova_optimization::SelfCollisionQueryResponse :datatype-) "kinova_optimization/SelfCollisionQueryResponse")
(setf (get kinova_optimization::SelfCollisionQueryResponse :definition-)
      "kinova_optimization/JointAngles query_state

================================================================================
MSG: kinova_optimization/JointAngles
std_msgs/Header header
std_msgs/Float64MultiArray angles
std_msgs/String notes

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: std_msgs/Float64MultiArray
# Please look at the MultiArrayLayout message definition for
# documentation on all multiarrays.

MultiArrayLayout  layout        # specification of data layout
float64[]         data          # array of data


================================================================================
MSG: std_msgs/MultiArrayLayout
# The multiarray declares a generic multi-dimensional array of a
# particular data type.  Dimensions are ordered from outer most
# to inner most.

MultiArrayDimension[] dim # Array of dimension properties
uint32 data_offset        # padding elements at front of data

# Accessors should ALWAYS be written in terms of dimension stride
# and specified outer-most dimension first.
# 
# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]
#
# A standard, 3-channel 640x480 image with interleaved color channels
# would be specified as:
#
# dim[0].label  = \"height\"
# dim[0].size   = 480
# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)
# dim[1].label  = \"width\"
# dim[1].size   = 640
# dim[1].stride = 3*640 = 1920
# dim[2].label  = \"channel\"
# dim[2].size   = 3
# dim[2].stride = 3
#
# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.

================================================================================
MSG: std_msgs/MultiArrayDimension
string label   # label of given dimension
uint32 size    # size of given dimension (in type units)
uint32 stride  # stride of given dimension
================================================================================
MSG: std_msgs/String
string data
---
std_msgs/Bool in_collision


================================================================================
MSG: std_msgs/Bool
")



(provide :kinova_optimization/SelfCollisionQuery "8c05d24c55da04c87f44aab507c5f376")


