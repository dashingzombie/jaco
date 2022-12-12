// Generated by gencpp from file kinova_optimization/SelfCollisionQueryResponse.msg
// DO NOT EDIT!


#ifndef KINOVA_OPTIMIZATION_MESSAGE_SELFCOLLISIONQUERYRESPONSE_H
#define KINOVA_OPTIMIZATION_MESSAGE_SELFCOLLISIONQUERYRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Bool.h>

namespace kinova_optimization
{
template <class ContainerAllocator>
struct SelfCollisionQueryResponse_
{
  typedef SelfCollisionQueryResponse_<ContainerAllocator> Type;

  SelfCollisionQueryResponse_()
    : in_collision()  {
    }
  SelfCollisionQueryResponse_(const ContainerAllocator& _alloc)
    : in_collision(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Bool_<ContainerAllocator>  _in_collision_type;
  _in_collision_type in_collision;





  typedef boost::shared_ptr< ::kinova_optimization::SelfCollisionQueryResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::kinova_optimization::SelfCollisionQueryResponse_<ContainerAllocator> const> ConstPtr;

}; // struct SelfCollisionQueryResponse_

typedef ::kinova_optimization::SelfCollisionQueryResponse_<std::allocator<void> > SelfCollisionQueryResponse;

typedef boost::shared_ptr< ::kinova_optimization::SelfCollisionQueryResponse > SelfCollisionQueryResponsePtr;
typedef boost::shared_ptr< ::kinova_optimization::SelfCollisionQueryResponse const> SelfCollisionQueryResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::kinova_optimization::SelfCollisionQueryResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::kinova_optimization::SelfCollisionQueryResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::kinova_optimization::SelfCollisionQueryResponse_<ContainerAllocator1> & lhs, const ::kinova_optimization::SelfCollisionQueryResponse_<ContainerAllocator2> & rhs)
{
  return lhs.in_collision == rhs.in_collision;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::kinova_optimization::SelfCollisionQueryResponse_<ContainerAllocator1> & lhs, const ::kinova_optimization::SelfCollisionQueryResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace kinova_optimization

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::kinova_optimization::SelfCollisionQueryResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kinova_optimization::SelfCollisionQueryResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kinova_optimization::SelfCollisionQueryResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kinova_optimization::SelfCollisionQueryResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kinova_optimization::SelfCollisionQueryResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kinova_optimization::SelfCollisionQueryResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::kinova_optimization::SelfCollisionQueryResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "0a4d02bb41fce54d43d67e91cba3aee4";
  }

  static const char* value(const ::kinova_optimization::SelfCollisionQueryResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x0a4d02bb41fce54dULL;
  static const uint64_t static_value2 = 0x43d67e91cba3aee4ULL;
};

template<class ContainerAllocator>
struct DataType< ::kinova_optimization::SelfCollisionQueryResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "kinova_optimization/SelfCollisionQueryResponse";
  }

  static const char* value(const ::kinova_optimization::SelfCollisionQueryResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::kinova_optimization::SelfCollisionQueryResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Bool in_collision\n"
"\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Bool\n"
"bool data\n"
;
  }

  static const char* value(const ::kinova_optimization::SelfCollisionQueryResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::kinova_optimization::SelfCollisionQueryResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.in_collision);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SelfCollisionQueryResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::kinova_optimization::SelfCollisionQueryResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::kinova_optimization::SelfCollisionQueryResponse_<ContainerAllocator>& v)
  {
    s << indent << "in_collision: ";
    s << std::endl;
    Printer< ::std_msgs::Bool_<ContainerAllocator> >::stream(s, indent + "  ", v.in_collision);
  }
};

} // namespace message_operations
} // namespace ros

#endif // KINOVA_OPTIMIZATION_MESSAGE_SELFCOLLISIONQUERYRESPONSE_H