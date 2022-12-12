;; Auto-generated. Do not edit!


(when (boundp 'kinova_optimization::JointAngles)
  (if (not (find-package "KINOVA_OPTIMIZATION"))
    (make-package "KINOVA_OPTIMIZATION"))
  (shadow 'JointAngles (find-package "KINOVA_OPTIMIZATION")))
(unless (find-package "KINOVA_OPTIMIZATION::JOINTANGLES")
  (make-package "KINOVA_OPTIMIZATION::JOINTANGLES"))

(in-package "ROS")
;;//! \htmlinclude JointAngles.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass kinova_optimization::JointAngles
  :super ros::object
  :slots (_header _angles _notes ))

(defmethod kinova_optimization::JointAngles
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:angles __angles) (instance std_msgs::Float64MultiArray :init))
    ((:notes __notes) (instance std_msgs::String :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _angles __angles)
   (setq _notes __notes)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:angles
   (&rest __angles)
   (if (keywordp (car __angles))
       (send* _angles __angles)
     (progn
       (if __angles (setq _angles (car __angles)))
       _angles)))
  (:notes
   (&rest __notes)
   (if (keywordp (car __notes))
       (send* _notes __notes)
     (progn
       (if __notes (setq _notes (car __notes)))
       _notes)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; std_msgs/Float64MultiArray _angles
    (send _angles :serialization-length)
    ;; std_msgs/String _notes
    (send _notes :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; std_msgs/Float64MultiArray _angles
       (send _angles :serialize s)
     ;; std_msgs/String _notes
       (send _notes :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; std_msgs/Float64MultiArray _angles
     (send _angles :deserialize buf ptr-) (incf ptr- (send _angles :serialization-length))
   ;; std_msgs/String _notes
     (send _notes :deserialize buf ptr-) (incf ptr- (send _notes :serialization-length))
   ;;
   self)
  )

(setf (get kinova_optimization::JointAngles :md5sum-) "da0d0aed462d0b8c5491933ab5458fde")
(setf (get kinova_optimization::JointAngles :datatype-) "kinova_optimization/JointAngles")
(setf (get kinova_optimization::JointAngles :definition-)
      "std_msgs/Header header
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



(provide :kinova_optimization/JointAngles "da0d0aed462d0b8c5491933ab5458fde")


