;; Auto-generated. Do not edit!


(when (boundp 'relaxed_ik_ros1::SelfCollisionQuery)
  (if (not (find-package "RELAXED_IK_ROS1"))
    (make-package "RELAXED_IK_ROS1"))
  (shadow 'SelfCollisionQuery (find-package "RELAXED_IK_ROS1")))
(unless (find-package "RELAXED_IK_ROS1::SELFCOLLISIONQUERY")
  (make-package "RELAXED_IK_ROS1::SELFCOLLISIONQUERY"))
(unless (find-package "RELAXED_IK_ROS1::SELFCOLLISIONQUERYREQUEST")
  (make-package "RELAXED_IK_ROS1::SELFCOLLISIONQUERYREQUEST"))
(unless (find-package "RELAXED_IK_ROS1::SELFCOLLISIONQUERYRESPONSE")
  (make-package "RELAXED_IK_ROS1::SELFCOLLISIONQUERYRESPONSE"))

(in-package "ROS")



(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass relaxed_ik_ros1::SelfCollisionQueryRequest
  :super ros::object
  :slots (_query_state ))

(defmethod relaxed_ik_ros1::SelfCollisionQueryRequest
  (:init
   (&key
    ((:query_state __query_state) (instance relaxed_ik_ros1::JointAngles :init))
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
    ;; relaxed_ik_ros1/JointAngles _query_state
    (send _query_state :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; relaxed_ik_ros1/JointAngles _query_state
       (send _query_state :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; relaxed_ik_ros1/JointAngles _query_state
     (send _query_state :deserialize buf ptr-) (incf ptr- (send _query_state :serialization-length))
   ;;
   self)
  )

(defclass relaxed_ik_ros1::SelfCollisionQueryResponse
  :super ros::object
  :slots (_in_collision ))

(defmethod relaxed_ik_ros1::SelfCollisionQueryResponse
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

(defclass relaxed_ik_ros1::SelfCollisionQuery
  :super ros::object
  :slots ())

(setf (get relaxed_ik_ros1::SelfCollisionQuery :md5sum-) "d289451142e9cb058f505f73f3b1fafc")
(setf (get relaxed_ik_ros1::SelfCollisionQuery :datatype-) "relaxed_ik_ros1/SelfCollisionQuery")
(setf (get relaxed_ik_ros1::SelfCollisionQuery :request) relaxed_ik_ros1::SelfCollisionQueryRequest)
(setf (get relaxed_ik_ros1::SelfCollisionQuery :response) relaxed_ik_ros1::SelfCollisionQueryResponse)

(defmethod relaxed_ik_ros1::SelfCollisionQueryRequest
  (:response () (instance relaxed_ik_ros1::SelfCollisionQueryResponse :init)))

(setf (get relaxed_ik_ros1::SelfCollisionQueryRequest :md5sum-) "d289451142e9cb058f505f73f3b1fafc")
(setf (get relaxed_ik_ros1::SelfCollisionQueryRequest :datatype-) "relaxed_ik_ros1/SelfCollisionQueryRequest")
(setf (get relaxed_ik_ros1::SelfCollisionQueryRequest :definition-)
      "relaxed_ik_ros1/JointAngles query_state

================================================================================
MSG: relaxed_ik_ros1/JointAngles
std_msgs/Header header
std_msgs/Float64MultiArray angles

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
---
std_msgs/Bool in_collision


================================================================================
MSG: std_msgs/Bool
")

(setf (get relaxed_ik_ros1::SelfCollisionQueryResponse :md5sum-) "d289451142e9cb058f505f73f3b1fafc")
(setf (get relaxed_ik_ros1::SelfCollisionQueryResponse :datatype-) "relaxed_ik_ros1/SelfCollisionQueryResponse")
(setf (get relaxed_ik_ros1::SelfCollisionQueryResponse :definition-)
      "relaxed_ik_ros1/JointAngles query_state

================================================================================
MSG: relaxed_ik_ros1/JointAngles
std_msgs/Header header
std_msgs/Float64MultiArray angles

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
---
std_msgs/Bool in_collision


================================================================================
MSG: std_msgs/Bool
")



(provide :relaxed_ik_ros1/SelfCollisionQuery "d289451142e9cb058f505f73f3b1fafc")


