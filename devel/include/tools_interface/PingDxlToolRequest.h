// Generated by gencpp from file tools_interface/PingDxlToolRequest.msg
// DO NOT EDIT!


#ifndef TOOLS_INTERFACE_MESSAGE_PINGDXLTOOLREQUEST_H
#define TOOLS_INTERFACE_MESSAGE_PINGDXLTOOLREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace tools_interface
{
template <class ContainerAllocator>
struct PingDxlToolRequest_
{
  typedef PingDxlToolRequest_<ContainerAllocator> Type;

  PingDxlToolRequest_()
    {
    }
  PingDxlToolRequest_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::tools_interface::PingDxlToolRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::tools_interface::PingDxlToolRequest_<ContainerAllocator> const> ConstPtr;

}; // struct PingDxlToolRequest_

typedef ::tools_interface::PingDxlToolRequest_<std::allocator<void> > PingDxlToolRequest;

typedef boost::shared_ptr< ::tools_interface::PingDxlToolRequest > PingDxlToolRequestPtr;
typedef boost::shared_ptr< ::tools_interface::PingDxlToolRequest const> PingDxlToolRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::tools_interface::PingDxlToolRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::tools_interface::PingDxlToolRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


} // namespace tools_interface

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::tools_interface::PingDxlToolRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tools_interface::PingDxlToolRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::tools_interface::PingDxlToolRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::tools_interface::PingDxlToolRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tools_interface::PingDxlToolRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tools_interface::PingDxlToolRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::tools_interface::PingDxlToolRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::tools_interface::PingDxlToolRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::tools_interface::PingDxlToolRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "tools_interface/PingDxlToolRequest";
  }

  static const char* value(const ::tools_interface::PingDxlToolRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::tools_interface::PingDxlToolRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
;
  }

  static const char* value(const ::tools_interface::PingDxlToolRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::tools_interface::PingDxlToolRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PingDxlToolRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::tools_interface::PingDxlToolRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::tools_interface::PingDxlToolRequest_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // TOOLS_INTERFACE_MESSAGE_PINGDXLTOOLREQUEST_H