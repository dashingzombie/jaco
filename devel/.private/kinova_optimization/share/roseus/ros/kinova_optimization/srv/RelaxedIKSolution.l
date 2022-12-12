;; Auto-generated. Do not edit!


(when (boundp 'kinova_optimization::RelaxedIKSolution)
  (if (not (find-package "KINOVA_OPTIMIZATION"))
    (make-package "KINOVA_OPTIMIZATION"))
  (shadow 'RelaxedIKSolution (find-package "KINOVA_OPTIMIZATION")))
(unless (find-package "KINOVA_OPTIMIZATION::RELAXEDIKSOLUTION")
  (make-package "KINOVA_OPTIMIZATION::RELAXEDIKSOLUTION"))
(unless (find-package "KINOVA_OPTIMIZATION::RELAXEDIKSOLUTIONREQUEST")
  (make-package "KINOVA_OPTIMIZATION::RELAXEDIKSOLUTIONREQUEST"))
(unless (find-package "KINOVA_OPTIMIZATION::RELAXEDIKSOLUTIONRESPONSE")
  (make-package "KINOVA_OPTIMIZATION::RELAXEDIKSOLUTIONRESPONSE"))

(in-package "ROS")





(defclass kinova_optimization::RelaxedIKSolutionRequest
  :super ros::object
  :slots (_ee_pose_goals ))

(defmethod kinova_optimization::RelaxedIKSolutionRequest
  (:init
   (&key
    ((:ee_pose_goals __ee_pose_goals) (instance kinova_optimization::EEPoseGoals :init))
    )
   (send-super :init)
   (setq _ee_pose_goals __ee_pose_goals)
   self)
  (:ee_pose_goals
   (&rest __ee_pose_goals)
   (if (keywordp (car __ee_pose_goals))
       (send* _ee_pose_goals __ee_pose_goals)
     (progn
       (if __ee_pose_goals (setq _ee_pose_goals (car __ee_pose_goals)))
       _ee_pose_goals)))
  (:serialization-length
   ()
   (+
    ;; kinova_optimization/EEPoseGoals _ee_pose_goals
    (send _ee_pose_goals :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; kinova_optimization/EEPoseGoals _ee_pose_goals
       (send _ee_pose_goals :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; kinova_optimization/EEPoseGoals _ee_pose_goals
     (send _ee_pose_goals :deserialize buf ptr-) (incf ptr- (send _ee_pose_goals :serialization-length))
   ;;
   self)
  )

(defclass kinova_optimization::RelaxedIKSolutionResponse
  :super ros::object
  :slots (_joint_angles ))

(defmethod kinova_optimization::RelaxedIKSolutionResponse
  (:init
   (&key
    ((:joint_angles __joint_angles) (instance kinova_optimization::JointAngles :init))
    )
   (send-super :init)
   (setq _joint_angles __joint_angles)
   self)
  (:joint_angles
   (&rest __joint_angles)
   (if (keywordp (car __joint_angles))
       (send* _joint_angles __joint_angles)
     (progn
       (if __joint_angles (setq _joint_angles (car __joint_angles)))
       _joint_angles)))
  (:serialization-length
   ()
   (+
    ;; kinova_optimization/JointAngles _joint_angles
    (send _joint_angles :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; kinova_optimization/JointAngles _joint_angles
       (send _joint_angles :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; kinova_optimization/JointAngles _joint_angles
     (send _joint_angles :deserialize buf ptr-) (incf ptr- (send _joint_angles :serialization-length))
   ;;
   self)
  )

(defclass kinova_optimization::RelaxedIKSolution
  :super ros::object
  :slots ())

(setf (get kinova_optimization::RelaxedIKSolution :md5sum-) "6b5f4afa17d360a74ece426d894ae4ff")
(setf (get kinova_optimization::RelaxedIKSolution :datatype-) "kinova_optimization/RelaxedIKSolution")
(setf (get kinova_optimization::RelaxedIKSolution :request) kinova_optimization::RelaxedIKSolutionRequest)
(setf (get kinova_optimization::RelaxedIKSolution :response) kinova_optimization::RelaxedIKSolutionResponse)

(defmethod kinova_optimization::RelaxedIKSolutionRequest
  (:response () (instance kinova_optimization::RelaxedIKSolutionResponse :init)))

(setf (get kinova_optimization::RelaxedIKSolutionRequest :md5sum-) "6b5f4afa17d360a74ece426d894ae4ff")
(setf (get kinova_optimization::RelaxedIKSolutionRequest :datatype-) "kinova_optimization/RelaxedIKSolutionRequest")
(setf (get kinova_optimization::RelaxedIKSolutionRequest :definition-)
      "kinova_optimization/EEPoseGoals ee_pose_goals

================================================================================
MSG: kinova_optimization/EEPoseGoals
std_msgs/Header header
geometry_msgs/Pose[] ee_poses
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
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: std_msgs/String
string data
---
kinova_optimization/JointAngles joint_angles


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
")

(setf (get kinova_optimization::RelaxedIKSolutionResponse :md5sum-) "6b5f4afa17d360a74ece426d894ae4ff")
(setf (get kinova_optimization::RelaxedIKSolutionResponse :datatype-) "kinova_optimization/RelaxedIKSolutionResponse")
(setf (get kinova_optimization::RelaxedIKSolutionResponse :definition-)
      "kinova_optimization/EEPoseGoals ee_pose_goals

================================================================================
MSG: kinova_optimization/EEPoseGoals
std_msgs/Header header
geometry_msgs/Pose[] ee_poses
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
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: std_msgs/String
string data
---
kinova_optimization/JointAngles joint_angles


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
")



(provide :kinova_optimization/RelaxedIKSolution "6b5f4afa17d360a74ece426d894ae4ff")


