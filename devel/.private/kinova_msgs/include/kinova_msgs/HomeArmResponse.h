// Generated by gencpp from file kinova_msgs/HomeArmResponse.msg
// DO NOT EDIT!


#ifndef KINOVA_MSGS_MESSAGE_HOMEARMRESPONSE_H
#define KINOVA_MSGS_MESSAGE_HOMEARMRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace kinova_msgs
{
template <class ContainerAllocator>
struct HomeArmResponse_
{
  typedef HomeArmResponse_<ContainerAllocator> Type;

  HomeArmResponse_()
    : homearm_result()  {
    }
  HomeArmResponse_(const ContainerAllocator& _alloc)
    : homearm_result(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _homearm_result_type;
  _homearm_result_type homearm_result;





  typedef boost::shared_ptr< ::kinova_msgs::HomeArmResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::kinova_msgs::HomeArmResponse_<ContainerAllocator> const> ConstPtr;

}; // struct HomeArmResponse_

typedef ::kinova_msgs::HomeArmResponse_<std::allocator<void> > HomeArmResponse;

typedef boost::shared_ptr< ::kinova_msgs::HomeArmResponse > HomeArmResponsePtr;
typedef boost::shared_ptr< ::kinova_msgs::HomeArmResponse const> HomeArmResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::kinova_msgs::HomeArmResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::kinova_msgs::HomeArmResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::kinova_msgs::HomeArmResponse_<ContainerAllocator1> & lhs, const ::kinova_msgs::HomeArmResponse_<ContainerAllocator2> & rhs)
{
  return lhs.homearm_result == rhs.homearm_result;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::kinova_msgs::HomeArmResponse_<ContainerAllocator1> & lhs, const ::kinova_msgs::HomeArmResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace kinova_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::kinova_msgs::HomeArmResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kinova_msgs::HomeArmResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kinova_msgs::HomeArmResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kinova_msgs::HomeArmResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kinova_msgs::HomeArmResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kinova_msgs::HomeArmResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::kinova_msgs::HomeArmResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "46e470f2c1a7177398c57a43eafe8d67";
  }

  static const char* value(const ::kinova_msgs::HomeArmResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x46e470f2c1a71773ULL;
  static const uint64_t static_value2 = 0x98c57a43eafe8d67ULL;
};

template<class ContainerAllocator>
struct DataType< ::kinova_msgs::HomeArmResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "kinova_msgs/HomeArmResponse";
  }

  static const char* value(const ::kinova_msgs::HomeArmResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::kinova_msgs::HomeArmResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string homearm_result\n"
"\n"
;
  }

  static const char* value(const ::kinova_msgs::HomeArmResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::kinova_msgs::HomeArmResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.homearm_result);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct HomeArmResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::kinova_msgs::HomeArmResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::kinova_msgs::HomeArmResponse_<ContainerAllocator>& v)
  {
    s << indent << "homearm_result: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.homearm_result);
  }
};

} // namespace message_operations
} // namespace ros

#endif // KINOVA_MSGS_MESSAGE_HOMEARMRESPONSE_H
