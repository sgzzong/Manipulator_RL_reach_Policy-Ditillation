// Generated by gencpp from file niryo_robot_msgs/AdvertiseShutdownRequest.msg
// DO NOT EDIT!


#ifndef NIRYO_ROBOT_MSGS_MESSAGE_ADVERTISESHUTDOWNREQUEST_H
#define NIRYO_ROBOT_MSGS_MESSAGE_ADVERTISESHUTDOWNREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace niryo_robot_msgs
{
template <class ContainerAllocator>
struct AdvertiseShutdownRequest_
{
  typedef AdvertiseShutdownRequest_<ContainerAllocator> Type;

  AdvertiseShutdownRequest_()
    : value(0)  {
    }
  AdvertiseShutdownRequest_(const ContainerAllocator& _alloc)
    : value(0)  {
  (void)_alloc;
    }



   typedef int8_t _value_type;
  _value_type value;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(SHUTDOWN)
  #undef SHUTDOWN
#endif
#if defined(_WIN32) && defined(REBOOT)
  #undef REBOOT
#endif
#if defined(_WIN32) && defined(UPDATE)
  #undef UPDATE
#endif

  enum {
    SHUTDOWN = 1,
    REBOOT = 2,
    UPDATE = 3,
  };


  typedef boost::shared_ptr< ::niryo_robot_msgs::AdvertiseShutdownRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::niryo_robot_msgs::AdvertiseShutdownRequest_<ContainerAllocator> const> ConstPtr;

}; // struct AdvertiseShutdownRequest_

typedef ::niryo_robot_msgs::AdvertiseShutdownRequest_<std::allocator<void> > AdvertiseShutdownRequest;

typedef boost::shared_ptr< ::niryo_robot_msgs::AdvertiseShutdownRequest > AdvertiseShutdownRequestPtr;
typedef boost::shared_ptr< ::niryo_robot_msgs::AdvertiseShutdownRequest const> AdvertiseShutdownRequestConstPtr;

// constants requiring out of line definition

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::niryo_robot_msgs::AdvertiseShutdownRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::niryo_robot_msgs::AdvertiseShutdownRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::niryo_robot_msgs::AdvertiseShutdownRequest_<ContainerAllocator1> & lhs, const ::niryo_robot_msgs::AdvertiseShutdownRequest_<ContainerAllocator2> & rhs)
{
  return lhs.value == rhs.value;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::niryo_robot_msgs::AdvertiseShutdownRequest_<ContainerAllocator1> & lhs, const ::niryo_robot_msgs::AdvertiseShutdownRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace niryo_robot_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::niryo_robot_msgs::AdvertiseShutdownRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::niryo_robot_msgs::AdvertiseShutdownRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::niryo_robot_msgs::AdvertiseShutdownRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::niryo_robot_msgs::AdvertiseShutdownRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::niryo_robot_msgs::AdvertiseShutdownRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::niryo_robot_msgs::AdvertiseShutdownRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::niryo_robot_msgs::AdvertiseShutdownRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "1dd7ddd0688b939e2ae5b9e453ef52bb";
  }

  static const char* value(const ::niryo_robot_msgs::AdvertiseShutdownRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x1dd7ddd0688b939eULL;
  static const uint64_t static_value2 = 0x2ae5b9e453ef52bbULL;
};

template<class ContainerAllocator>
struct DataType< ::niryo_robot_msgs::AdvertiseShutdownRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "niryo_robot_msgs/AdvertiseShutdownRequest";
  }

  static const char* value(const ::niryo_robot_msgs::AdvertiseShutdownRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::niryo_robot_msgs::AdvertiseShutdownRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int8 SHUTDOWN=1\n"
"int8 REBOOT=2\n"
"int8 UPDATE=3\n"
"\n"
"int8 value\n"
;
  }

  static const char* value(const ::niryo_robot_msgs::AdvertiseShutdownRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::niryo_robot_msgs::AdvertiseShutdownRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.value);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct AdvertiseShutdownRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::niryo_robot_msgs::AdvertiseShutdownRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::niryo_robot_msgs::AdvertiseShutdownRequest_<ContainerAllocator>& v)
  {
    s << indent << "value: ";
    Printer<int8_t>::stream(s, indent + "  ", v.value);
  }
};

} // namespace message_operations
} // namespace ros

#endif // NIRYO_ROBOT_MSGS_MESSAGE_ADVERTISESHUTDOWNREQUEST_H
