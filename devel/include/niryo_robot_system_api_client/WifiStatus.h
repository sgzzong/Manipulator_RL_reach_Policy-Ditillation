// Generated by gencpp from file niryo_robot_system_api_client/WifiStatus.msg
// DO NOT EDIT!


#ifndef NIRYO_ROBOT_SYSTEM_API_CLIENT_MESSAGE_WIFISTATUS_H
#define NIRYO_ROBOT_SYSTEM_API_CLIENT_MESSAGE_WIFISTATUS_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace niryo_robot_system_api_client
{
template <class ContainerAllocator>
struct WifiStatus_
{
  typedef WifiStatus_<ContainerAllocator> Type;

  WifiStatus_()
    : status(0)  {
    }
  WifiStatus_(const ContainerAllocator& _alloc)
    : status(0)  {
  (void)_alloc;
    }



   typedef int8_t _status_type;
  _status_type status;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(UNKNOWN)
  #undef UNKNOWN
#endif
#if defined(_WIN32) && defined(HOTSPOT)
  #undef HOTSPOT
#endif
#if defined(_WIN32) && defined(DISABLED)
  #undef DISABLED
#endif
#if defined(_WIN32) && defined(CONNECTED)
  #undef CONNECTED
#endif
#if defined(_WIN32) && defined(DISCONNECTED)
  #undef DISCONNECTED
#endif

  enum {
    UNKNOWN = 0,
    HOTSPOT = 1,
    DISABLED = 2,
    CONNECTED = 3,
    DISCONNECTED = 4,
  };


  typedef boost::shared_ptr< ::niryo_robot_system_api_client::WifiStatus_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::niryo_robot_system_api_client::WifiStatus_<ContainerAllocator> const> ConstPtr;

}; // struct WifiStatus_

typedef ::niryo_robot_system_api_client::WifiStatus_<std::allocator<void> > WifiStatus;

typedef boost::shared_ptr< ::niryo_robot_system_api_client::WifiStatus > WifiStatusPtr;
typedef boost::shared_ptr< ::niryo_robot_system_api_client::WifiStatus const> WifiStatusConstPtr;

// constants requiring out of line definition

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::niryo_robot_system_api_client::WifiStatus_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::niryo_robot_system_api_client::WifiStatus_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::niryo_robot_system_api_client::WifiStatus_<ContainerAllocator1> & lhs, const ::niryo_robot_system_api_client::WifiStatus_<ContainerAllocator2> & rhs)
{
  return lhs.status == rhs.status;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::niryo_robot_system_api_client::WifiStatus_<ContainerAllocator1> & lhs, const ::niryo_robot_system_api_client::WifiStatus_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace niryo_robot_system_api_client

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::niryo_robot_system_api_client::WifiStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::niryo_robot_system_api_client::WifiStatus_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::niryo_robot_system_api_client::WifiStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::niryo_robot_system_api_client::WifiStatus_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::niryo_robot_system_api_client::WifiStatus_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::niryo_robot_system_api_client::WifiStatus_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::niryo_robot_system_api_client::WifiStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bd2f5ccbbf459aac04ecaee46d455e92";
  }

  static const char* value(const ::niryo_robot_system_api_client::WifiStatus_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xbd2f5ccbbf459aacULL;
  static const uint64_t static_value2 = 0x04ecaee46d455e92ULL;
};

template<class ContainerAllocator>
struct DataType< ::niryo_robot_system_api_client::WifiStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "niryo_robot_system_api_client/WifiStatus";
  }

  static const char* value(const ::niryo_robot_system_api_client::WifiStatus_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::niryo_robot_system_api_client::WifiStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int8 UNKNOWN = 0\n"
"int8 HOTSPOT = 1\n"
"int8 DISABLED = 2\n"
"int8 CONNECTED = 3\n"
"int8 DISCONNECTED = 4\n"
"\n"
"int8 status\n"
;
  }

  static const char* value(const ::niryo_robot_system_api_client::WifiStatus_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::niryo_robot_system_api_client::WifiStatus_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.status);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct WifiStatus_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::niryo_robot_system_api_client::WifiStatus_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::niryo_robot_system_api_client::WifiStatus_<ContainerAllocator>& v)
  {
    s << indent << "status: ";
    Printer<int8_t>::stream(s, indent + "  ", v.status);
  }
};

} // namespace message_operations
} // namespace ros

#endif // NIRYO_ROBOT_SYSTEM_API_CLIENT_MESSAGE_WIFISTATUS_H
