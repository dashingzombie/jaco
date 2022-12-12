# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from relaxed_ik_ros1/IKSolutionRequest.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import relaxed_ik_ros1.msg
import std_msgs.msg

class IKSolutionRequest(genpy.Message):
  _md5sum = "5c994d3a5365dd2924fa4ed43357ff6a"
  _type = "relaxed_ik_ros1/IKSolutionRequest"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """relaxed_ik_ros1/EEPoseGoals ee_pose_goals
relaxed_ik_ros1/JointAngles init
float64 ee_pos_precision
float64 ee_rot_precision

================================================================================
MSG: relaxed_ik_ros1/EEPoseGoals
std_msgs/Header header
geometry_msgs/Pose[] ee_poses

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
MSG: relaxed_ik_ros1/JointAngles
std_msgs/Header header
std_msgs/Float64MultiArray angles

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
# dim[0].label  = "height"
# dim[0].size   = 480
# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)
# dim[1].label  = "width"
# dim[1].size   = 640
# dim[1].stride = 3*640 = 1920
# dim[2].label  = "channel"
# dim[2].size   = 3
# dim[2].stride = 3
#
# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.

================================================================================
MSG: std_msgs/MultiArrayDimension
string label   # label of given dimension
uint32 size    # size of given dimension (in type units)
uint32 stride  # stride of given dimension"""
  __slots__ = ['ee_pose_goals','init','ee_pos_precision','ee_rot_precision']
  _slot_types = ['relaxed_ik_ros1/EEPoseGoals','relaxed_ik_ros1/JointAngles','float64','float64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       ee_pose_goals,init,ee_pos_precision,ee_rot_precision

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(IKSolutionRequest, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.ee_pose_goals is None:
        self.ee_pose_goals = relaxed_ik_ros1.msg.EEPoseGoals()
      if self.init is None:
        self.init = relaxed_ik_ros1.msg.JointAngles()
      if self.ee_pos_precision is None:
        self.ee_pos_precision = 0.
      if self.ee_rot_precision is None:
        self.ee_rot_precision = 0.
    else:
      self.ee_pose_goals = relaxed_ik_ros1.msg.EEPoseGoals()
      self.init = relaxed_ik_ros1.msg.JointAngles()
      self.ee_pos_precision = 0.
      self.ee_rot_precision = 0.

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.ee_pose_goals.header.seq, _x.ee_pose_goals.header.stamp.secs, _x.ee_pose_goals.header.stamp.nsecs))
      _x = self.ee_pose_goals.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      length = len(self.ee_pose_goals.ee_poses)
      buff.write(_struct_I.pack(length))
      for val1 in self.ee_pose_goals.ee_poses:
        _v1 = val1.position
        _x = _v1
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v2 = val1.orientation
        _x = _v2
        buff.write(_get_struct_4d().pack(_x.x, _x.y, _x.z, _x.w))
      _x = self
      buff.write(_get_struct_3I().pack(_x.init.header.seq, _x.init.header.stamp.secs, _x.init.header.stamp.nsecs))
      _x = self.init.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      length = len(self.init.angles.layout.dim)
      buff.write(_struct_I.pack(length))
      for val1 in self.init.angles.layout.dim:
        _x = val1.label
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = val1
        buff.write(_get_struct_2I().pack(_x.size, _x.stride))
      _x = self.init.angles.layout.data_offset
      buff.write(_get_struct_I().pack(_x))
      length = len(self.init.angles.data)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(struct.Struct(pattern).pack(*self.init.angles.data))
      _x = self
      buff.write(_get_struct_2d().pack(_x.ee_pos_precision, _x.ee_rot_precision))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.ee_pose_goals is None:
        self.ee_pose_goals = relaxed_ik_ros1.msg.EEPoseGoals()
      if self.init is None:
        self.init = relaxed_ik_ros1.msg.JointAngles()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.ee_pose_goals.header.seq, _x.ee_pose_goals.header.stamp.secs, _x.ee_pose_goals.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.ee_pose_goals.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.ee_pose_goals.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.ee_pose_goals.ee_poses = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.Pose()
        _v3 = val1.position
        _x = _v3
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v4 = val1.orientation
        _x = _v4
        start = end
        end += 32
        (_x.x, _x.y, _x.z, _x.w,) = _get_struct_4d().unpack(str[start:end])
        self.ee_pose_goals.ee_poses.append(val1)
      _x = self
      start = end
      end += 12
      (_x.init.header.seq, _x.init.header.stamp.secs, _x.init.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.init.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.init.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.init.angles.layout.dim = []
      for i in range(0, length):
        val1 = std_msgs.msg.MultiArrayDimension()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.label = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.label = str[start:end]
        _x = val1
        start = end
        end += 8
        (_x.size, _x.stride,) = _get_struct_2I().unpack(str[start:end])
        self.init.angles.layout.dim.append(val1)
      start = end
      end += 4
      (self.init.angles.layout.data_offset,) = _get_struct_I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.init.angles.data = s.unpack(str[start:end])
      _x = self
      start = end
      end += 16
      (_x.ee_pos_precision, _x.ee_rot_precision,) = _get_struct_2d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.ee_pose_goals.header.seq, _x.ee_pose_goals.header.stamp.secs, _x.ee_pose_goals.header.stamp.nsecs))
      _x = self.ee_pose_goals.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      length = len(self.ee_pose_goals.ee_poses)
      buff.write(_struct_I.pack(length))
      for val1 in self.ee_pose_goals.ee_poses:
        _v5 = val1.position
        _x = _v5
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v6 = val1.orientation
        _x = _v6
        buff.write(_get_struct_4d().pack(_x.x, _x.y, _x.z, _x.w))
      _x = self
      buff.write(_get_struct_3I().pack(_x.init.header.seq, _x.init.header.stamp.secs, _x.init.header.stamp.nsecs))
      _x = self.init.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      length = len(self.init.angles.layout.dim)
      buff.write(_struct_I.pack(length))
      for val1 in self.init.angles.layout.dim:
        _x = val1.label
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = val1
        buff.write(_get_struct_2I().pack(_x.size, _x.stride))
      _x = self.init.angles.layout.data_offset
      buff.write(_get_struct_I().pack(_x))
      length = len(self.init.angles.data)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(self.init.angles.data.tostring())
      _x = self
      buff.write(_get_struct_2d().pack(_x.ee_pos_precision, _x.ee_rot_precision))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.ee_pose_goals is None:
        self.ee_pose_goals = relaxed_ik_ros1.msg.EEPoseGoals()
      if self.init is None:
        self.init = relaxed_ik_ros1.msg.JointAngles()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.ee_pose_goals.header.seq, _x.ee_pose_goals.header.stamp.secs, _x.ee_pose_goals.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.ee_pose_goals.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.ee_pose_goals.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.ee_pose_goals.ee_poses = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.Pose()
        _v7 = val1.position
        _x = _v7
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v8 = val1.orientation
        _x = _v8
        start = end
        end += 32
        (_x.x, _x.y, _x.z, _x.w,) = _get_struct_4d().unpack(str[start:end])
        self.ee_pose_goals.ee_poses.append(val1)
      _x = self
      start = end
      end += 12
      (_x.init.header.seq, _x.init.header.stamp.secs, _x.init.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.init.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.init.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.init.angles.layout.dim = []
      for i in range(0, length):
        val1 = std_msgs.msg.MultiArrayDimension()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.label = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.label = str[start:end]
        _x = val1
        start = end
        end += 8
        (_x.size, _x.stride,) = _get_struct_2I().unpack(str[start:end])
        self.init.angles.layout.dim.append(val1)
      start = end
      end += 4
      (self.init.angles.layout.data_offset,) = _get_struct_I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.init.angles.data = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
      _x = self
      start = end
      end += 16
      (_x.ee_pos_precision, _x.ee_rot_precision,) = _get_struct_2d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2I = None
def _get_struct_2I():
    global _struct_2I
    if _struct_2I is None:
        _struct_2I = struct.Struct("<2I")
    return _struct_2I
_struct_2d = None
def _get_struct_2d():
    global _struct_2d
    if _struct_2d is None:
        _struct_2d = struct.Struct("<2d")
    return _struct_2d
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_3d = None
def _get_struct_3d():
    global _struct_3d
    if _struct_3d is None:
        _struct_3d = struct.Struct("<3d")
    return _struct_3d
_struct_4d = None
def _get_struct_4d():
    global _struct_4d
    if _struct_4d is None:
        _struct_4d = struct.Struct("<4d")
    return _struct_4d
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from relaxed_ik_ros1/IKSolutionResponse.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import relaxed_ik_ros1.msg
import std_msgs.msg

class IKSolutionResponse(genpy.Message):
  _md5sum = "be9c9e1cc6594ec3c16dc37b2cb66b9e"
  _type = "relaxed_ik_ros1/IKSolutionResponse"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """relaxed_ik_ros1/JointAngles joint_angles
bool success


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
# dim[0].label  = "height"
# dim[0].size   = 480
# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)
# dim[1].label  = "width"
# dim[1].size   = 640
# dim[1].stride = 3*640 = 1920
# dim[2].label  = "channel"
# dim[2].size   = 3
# dim[2].stride = 3
#
# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.

================================================================================
MSG: std_msgs/MultiArrayDimension
string label   # label of given dimension
uint32 size    # size of given dimension (in type units)
uint32 stride  # stride of given dimension"""
  __slots__ = ['joint_angles','success']
  _slot_types = ['relaxed_ik_ros1/JointAngles','bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       joint_angles,success

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(IKSolutionResponse, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.joint_angles is None:
        self.joint_angles = relaxed_ik_ros1.msg.JointAngles()
      if self.success is None:
        self.success = False
    else:
      self.joint_angles = relaxed_ik_ros1.msg.JointAngles()
      self.success = False

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.joint_angles.header.seq, _x.joint_angles.header.stamp.secs, _x.joint_angles.header.stamp.nsecs))
      _x = self.joint_angles.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      length = len(self.joint_angles.angles.layout.dim)
      buff.write(_struct_I.pack(length))
      for val1 in self.joint_angles.angles.layout.dim:
        _x = val1.label
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = val1
        buff.write(_get_struct_2I().pack(_x.size, _x.stride))
      _x = self.joint_angles.angles.layout.data_offset
      buff.write(_get_struct_I().pack(_x))
      length = len(self.joint_angles.angles.data)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(struct.Struct(pattern).pack(*self.joint_angles.angles.data))
      _x = self.success
      buff.write(_get_struct_B().pack(_x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.joint_angles is None:
        self.joint_angles = relaxed_ik_ros1.msg.JointAngles()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.joint_angles.header.seq, _x.joint_angles.header.stamp.secs, _x.joint_angles.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.joint_angles.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.joint_angles.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.joint_angles.angles.layout.dim = []
      for i in range(0, length):
        val1 = std_msgs.msg.MultiArrayDimension()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.label = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.label = str[start:end]
        _x = val1
        start = end
        end += 8
        (_x.size, _x.stride,) = _get_struct_2I().unpack(str[start:end])
        self.joint_angles.angles.layout.dim.append(val1)
      start = end
      end += 4
      (self.joint_angles.angles.layout.data_offset,) = _get_struct_I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.joint_angles.angles.data = s.unpack(str[start:end])
      start = end
      end += 1
      (self.success,) = _get_struct_B().unpack(str[start:end])
      self.success = bool(self.success)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.joint_angles.header.seq, _x.joint_angles.header.stamp.secs, _x.joint_angles.header.stamp.nsecs))
      _x = self.joint_angles.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      length = len(self.joint_angles.angles.layout.dim)
      buff.write(_struct_I.pack(length))
      for val1 in self.joint_angles.angles.layout.dim:
        _x = val1.label
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = val1
        buff.write(_get_struct_2I().pack(_x.size, _x.stride))
      _x = self.joint_angles.angles.layout.data_offset
      buff.write(_get_struct_I().pack(_x))
      length = len(self.joint_angles.angles.data)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(self.joint_angles.angles.data.tostring())
      _x = self.success
      buff.write(_get_struct_B().pack(_x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.joint_angles is None:
        self.joint_angles = relaxed_ik_ros1.msg.JointAngles()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.joint_angles.header.seq, _x.joint_angles.header.stamp.secs, _x.joint_angles.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.joint_angles.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.joint_angles.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.joint_angles.angles.layout.dim = []
      for i in range(0, length):
        val1 = std_msgs.msg.MultiArrayDimension()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.label = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.label = str[start:end]
        _x = val1
        start = end
        end += 8
        (_x.size, _x.stride,) = _get_struct_2I().unpack(str[start:end])
        self.joint_angles.angles.layout.dim.append(val1)
      start = end
      end += 4
      (self.joint_angles.angles.layout.data_offset,) = _get_struct_I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.joint_angles.angles.data = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
      start = end
      end += 1
      (self.success,) = _get_struct_B().unpack(str[start:end])
      self.success = bool(self.success)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2I = None
def _get_struct_2I():
    global _struct_2I
    if _struct_2I is None:
        _struct_2I = struct.Struct("<2I")
    return _struct_2I
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_B = None
def _get_struct_B():
    global _struct_B
    if _struct_B is None:
        _struct_B = struct.Struct("<B")
    return _struct_B
class IKSolution(object):
  _type          = 'relaxed_ik_ros1/IKSolution'
  _md5sum = 'e880646518d0e045f0fd574a26c68ad6'
  _request_class  = IKSolutionRequest
  _response_class = IKSolutionResponse
