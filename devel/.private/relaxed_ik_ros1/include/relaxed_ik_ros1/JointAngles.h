// Generated by gencpp from file relaxed_ik_ros1/JointAngles.msg
// DO NOT EDIT!


#ifndef RELAXED_IK_ROS1_MESSAGE_JOINTANGLES_H
#define RELAXED_IK_ROS1_MESSAGE_JOINTANGLES_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <std_msgs/Float64MultiArray.h>

namespace relaxed_ik_ros1
{
template <class ContainerAllocator>
struct JointAngles_
{
  typedef JointAngles_<ContainerAllocator> Type;

  JointAngles_()
    : header()
    , angles()  {
    }
  JointAngles_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , angles(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::std_msgs::Float64MultiArray_<ContainerAllocator>  _angles_type;
  _angles_type angles;





  typedef boost::shared_ptr< ::relaxed_ik_ros1::JointAngles_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::relaxed_ik_ros1::JointAngles_<ContainerAllocator> const> ConstPtr;

}; // struct JointAngles_

typedef ::relaxed_ik_ros1::JointAngles_<std::allocator<void> > JointAngles;

typedef boost::shared_ptr< ::relaxed_ik_ros1::JointAngles > JointAnglesPtr;
typedef boost::shared_ptr< ::relaxed_ik_ros1::JointAngles const> JointAnglesConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::relaxed_ik_ros1::JointAngles_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::relaxed_ik_ros1::JointAngles_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::relaxed_ik_ros1::JointAngles_<ContainerAllocator1> & lhs, const ::relaxed_ik_ros1::JointAngles_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.angles == rhs.angles;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::relaxed_ik_ros1::JointAngles_<ContainerAllocator1> & lhs, const ::relaxed_ik_ros1::JointAngles_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace relaxed_ik_ros1

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::relaxed_ik_ros1::JointAngles_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::relaxed_ik_ros1::JointAngles_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::relaxed_ik_ros1::JointAngles_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::relaxed_ik_ros1::JointAngles_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::relaxed_ik_ros1::JointAngles_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::relaxed_ik_ros1::JointAngles_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::relaxed_ik_ros1::JointAngles_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ff124799bb6d3b61919ce9854b7a32e6";
  }

  static const char* value(const ::relaxed_ik_ros1::JointAngles_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xff124799bb6d3b61ULL;
  static const uint64_t static_value2 = 0x919ce9854b7a32e6ULL;
};

template<class ContainerAllocator>
struct DataType< ::relaxed_ik_ros1::JointAngles_<ContainerAllocator> >
{
  static const char* value()
  {
    return "relaxed_ik_ros1/JointAngles";
  }

  static const char* value(const ::relaxed_ik_ros1::JointAngles_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::relaxed_ik_ros1::JointAngles_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Header header\n"
"std_msgs/Float64MultiArray angles\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Float64MultiArray\n"
"# Please look at the MultiArrayLayout message definition for\n"
"# documentation on all multiarrays.\n"
"\n"
"MultiArrayLayout  layout        # specification of data layout\n"
"float64[]         data          # array of data\n"
"\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/MultiArrayLayout\n"
"# The multiarray declares a generic multi-dimensional array of a\n"
"# particular data type.  Dimensions are ordered from outer most\n"
"# to inner most.\n"
"\n"
"MultiArrayDimension[] dim # Array of dimension properties\n"
"uint32 data_offset        # padding elements at front of data\n"
"\n"
"# Accessors should ALWAYS be written in terms of dimension stride\n"
"# and specified outer-most dimension first.\n"
"# \n"
"# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]\n"
"#\n"
"# A standard, 3-channel 640x480 image with interleaved color channels\n"
"# would be specified as:\n"
"#\n"
"# dim[0].label  = \"height\"\n"
"# dim[0].size   = 480\n"
"# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)\n"
"# dim[1].label  = \"width\"\n"
"# dim[1].size   = 640\n"
"# dim[1].stride = 3*640 = 1920\n"
"# dim[2].label  = \"channel\"\n"
"# dim[2].size   = 3\n"
"# dim[2].stride = 3\n"
"#\n"
"# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/MultiArrayDimension\n"
"string label   # label of given dimension\n"
"uint32 size    # size of given dimension (in type units)\n"
"uint32 stride  # stride of given dimension\n"
;
  }

  static const char* value(const ::relaxed_ik_ros1::JointAngles_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::relaxed_ik_ros1::JointAngles_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.angles);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct JointAngles_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::relaxed_ik_ros1::JointAngles_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::relaxed_ik_ros1::JointAngles_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "angles: ";
    s << std::endl;
    Printer< ::std_msgs::Float64MultiArray_<ContainerAllocator> >::stream(s, indent + "  ", v.angles);
  }
};

} // namespace message_operations
} // namespace ros

#endif // RELAXED_IK_ROS1_MESSAGE_JOINTANGLES_H
