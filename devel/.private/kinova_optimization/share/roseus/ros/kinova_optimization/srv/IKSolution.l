;; Auto-generated. Do not edit!


(when (boundp 'kinova_optimization::IKSolution)
  (if (not (find-package "KINOVA_OPTIMIZATION"))
    (make-package "KINOVA_OPTIMIZATION"))
  (shadow 'IKSolution (find-package "KINOVA_OPTIMIZATION")))
(unless (find-package "KINOVA_OPTIMIZATION::IKSOLUTION")
  (make-package "KINOVA_OPTIMIZATION::IKSOLUTION"))
(unless (find-package "KINOVA_OPTIMIZATION::IKSOLUTIONREQUEST")
  (make-package "KINOVA_OPTIMIZATION::IKSOLUTIONREQUEST"))
(unless (find-package "KINOVA_OPTIMIZATION::IKSOLUTIONRESPONSE")
  (make-package "KINOVA_OPTIMIZATION::IKSOLUTIONRESPONSE"))

(in-package "ROS")





(defclass kinova_optimization::IKSolutionRequest
  :super ros::object
  :slots (_ee_pose_goals _init _ee_pos_precision _ee_rot_precision ))

(defmethod kinova_optimization::IKSolutionRequest
  (:init
   (&key
    ((:ee_pose_goals __ee_pose_goals) (instance kinova_optimization::EEPoseGoals :init))
    ((:init __init) (instance kinova_optimization::JointAngles :init))
    ((:ee_pos_precision __ee_pos_precision) 0.0)
    ((:ee_rot_precision __ee_rot_precision) 0.0)
    )
   (send-super :init)
   (setq _ee_pose_goals __ee_pose_goals)
   (setq _init __init)
   (setq _ee_pos_precision (float __ee_pos_precision))
   (setq _ee_rot_precision (float __ee_rot_precision))
   self)
  (:ee_pose_goals
   (&rest __ee_pose_goals)
   (if (keywordp (car __ee_pose_goals))
       (send* _ee_pose_goals __ee_pose_goals)
     (progn
       (if __ee_pose_goals (setq _ee_pose_goals (car __ee_pose_goals)))
       _ee_pose_goals)))
  (:init
   (&rest __init)
   (if (keywordp (car __init))
       (send* _init __init)
     (progn
       (if __init (setq _init (car __init)))
       _init)))
  (:ee_pos_precision
   (&optional __ee_pos_precision)
   (if __ee_pos_precision (setq _ee_pos_precision __ee_pos_precision)) _ee_pos_precision)
  (:ee_rot_precision
   (&optional __ee_rot_precision)
   (if __ee_rot_precision (setq _ee_rot_precision __ee_rot_precision)) _ee_rot_precision)
  (:serialization-length
   ()
   (+
    ;; kinova_optimization/EEPoseGoals _ee_pose_goals
    (send _ee_pose_goals :serialization-length)
    ;; kinova_optimization/JointAngles _init
    (send _init :serialization-length)
    ;; float64 _ee_pos_precision
    8
    ;; float64 _ee_rot_precision
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; kinova_optimization/EEPoseGoals _ee_pose_goals
       (send _ee_pose_goals :serialize s)
     ;; kinova_optimization/JointAngles _init
       (send _init :serialize s)
     ;; float64 _ee_pos_precision
       (sys::poke _ee_pos_precision (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ee_rot_precision
       (sys::poke _ee_rot_precision (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; kinova_optimization/EEPoseGoals _ee_pose_goals
     (send _ee_pose_goals :deserialize buf ptr-) (incf ptr- (send _ee_pose_goals :serialization-length))
   ;; kinova_optimization/JointAngles _init
     (send _init :deserialize buf ptr-) (incf ptr- (send _init :serialization-length))
   ;; float64 _ee_pos_precision
     (setq _ee_pos_precision (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ee_rot_precision
     (setq _ee_rot_precision (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass kinova_optimization::IKSolutionResponse
  :super ros::object
  :slots (_joint_angles _success ))

(defmethod kinova_optimization::IKSolutionResponse
  (:init
   (&key
    ((:joint_angles __joint_angles) (instance kinova_optimization::JointAngles :init))
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _joint_angles __joint_angles)
   (setq _success __success)
   self)
  (:joint_angles
   (&rest __joint_angles)
   (if (keywordp (car __joint_angles))
       (send* _joint_angles __joint_angles)
     (progn
       (if __joint_angles (setq _joint_angles (car __joint_angles)))
       _joint_angles)))
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; kinova_optimization/JointAngles _joint_angles
    (send _joint_angles :serialization-length)
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; kinova_optimization/JointAngles _joint_angles
       (send _joint_angles :serialize s)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; kinova_optimization/JointAngles _joint_angles
     (send _joint_angles :deserialize buf ptr-) (incf ptr- (send _joint_angles :serialization-length))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass kinova_optimization::IKSolution
  :super ros::object
  :slots ())

(setf (get kinova_optimization::IKSolution :md5sum-) "31ace2d87a66926cb643feb651eb2e0b")
(setf (get kinova_optimization::IKSolution :datatype-) "kinova_optimization/IKSolution")
(setf (get kinova_optimization::IKSolution :request) kinova_optimization::IKSolutionRequest)
(setf (get kinova_optimization::IKSolution :response) kinova_optimization::IKSolutionResponse)

(defmethod kinova_optimization::IKSolutionRequest
  (:response () (instance kinova_optimization::IKSolutionResponse :init)))

(setf (get kinova_optimization::IKSolutionRequest :md5sum-) "31ace2d87a66926cb643feb651eb2e0b")
(setf (get kinova_optimization::IKSolutionRequest :datatype-) "kinova_optimization/IKSolutionRequest")
(setf (get kinova_optimization::IKSolutionRequest :definition-)
      "kinova_optimization/EEPoseGoals ee_pose_goals
kinova_optimization/JointAngles init
float64 ee_pos_precision
float64 ee_rot_precision

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

================================================================================
MSG: kinova_optimization/JointAngles
std_msgs/Header header
std_msgs/Float64MultiArray angles
std_msgs/String notes

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
kinova_optimization/JointAngles joint_angles
bool success


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

(setf (get kinova_optimization::IKSolutionResponse :md5sum-) "31ace2d87a66926cb643feb651eb2e0b")
(setf (get kinova_optimization::IKSolutionResponse :datatype-) "kinova_optimization/IKSolutionResponse")
(setf (get kinova_optimization::IKSolutionResponse :definition-)
      "kinova_optimization/EEPoseGoals ee_pose_goals
kinova_optimization/JointAngles init
float64 ee_pos_precision
float64 ee_rot_precision

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

================================================================================
MSG: kinova_optimization/JointAngles
std_msgs/Header header
std_msgs/Float64MultiArray angles
std_msgs/String notes

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
kinova_optimization/JointAngles joint_angles
bool success


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



(provide :kinova_optimization/IKSolution "31ace2d87a66926cb643feb651eb2e0b")


