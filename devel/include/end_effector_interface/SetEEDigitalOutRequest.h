// Generated by gencpp from file end_effector_interface/SetEEDigitalOutRequest.msg
// DO NOT EDIT!


#ifndef END_EFFECTOR_INTERFACE_MESSAGE_SETEEDIGITALOUTREQUEST_H
#define END_EFFECTOR_INTERFACE_MESSAGE_SETEEDIGITALOUTREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace end_effector_interface
{
template <class ContainerAllocator>
struct SetEEDigitalOutRequest_
{
  typedef SetEEDigitalOutRequest_<ContainerAllocator> Type;

  SetEEDigitalOutRequest_()
    : data(false)  {
    }
  SetEEDigitalOutRequest_(const ContainerAllocator& _alloc)
    : data(false)  {
  (void)_alloc;
    }



   typedef uint8_t _data_type;
  _data_type data;





  typedef boost::shared_ptr< ::end_effector_interface::SetEEDigitalOutRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::end_effector_interface::SetEEDigitalOutRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SetEEDigitalOutRequest_

typedef ::end_effector_interface::SetEEDigitalOutRequest_<std::allocator<void> > SetEEDigitalOutRequest;

typedef boost::shared_ptr< ::end_effector_interface::SetEEDigitalOutRequest > SetEEDigitalOutRequestPtr;
typedef boost::shared_ptr< ::end_effector_interface::SetEEDigitalOutRequest const> SetEEDigitalOutRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::end_effector_interface::SetEEDigitalOutRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::end_effector_interface::SetEEDigitalOutRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::end_effector_interface::SetEEDigitalOutRequest_<ContainerAllocator1> & lhs, const ::end_effector_interface::SetEEDigitalOutRequest_<ContainerAllocator2> & rhs)
{
  return lhs.data == rhs.data;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::end_effector_interface::SetEEDigitalOutRequest_<ContainerAllocator1> & lhs, const ::end_effector_interface::SetEEDigitalOutRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace end_effector_interface

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::end_effector_interface::SetEEDigitalOutRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::end_effector_interface::SetEEDigitalOutRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::end_effector_interface::SetEEDigitalOutRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::end_effector_interface::SetEEDigitalOutRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::end_effector_interface::SetEEDigitalOutRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::end_effector_interface::SetEEDigitalOutRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::end_effector_interface::SetEEDigitalOutRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8b94c1b53db61fb6aed406028ad6332a";
  }

  static const char* value(const ::end_effector_interface::SetEEDigitalOutRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8b94c1b53db61fb6ULL;
  static const uint64_t static_value2 = 0xaed406028ad6332aULL;
};

template<class ContainerAllocator>
struct DataType< ::end_effector_interface::SetEEDigitalOutRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "end_effector_interface/SetEEDigitalOutRequest";
  }

  static const char* value(const ::end_effector_interface::SetEEDigitalOutRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::end_effector_interface::SetEEDigitalOutRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool data\n"
;
  }

  static const char* value(const ::end_effector_interface::SetEEDigitalOutRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::end_effector_interface::SetEEDigitalOutRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.data);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetEEDigitalOutRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::end_effector_interface::SetEEDigitalOutRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::end_effector_interface::SetEEDigitalOutRequest_<ContainerAllocator>& v)
  {
    s << indent << "data: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.data);
  }
};

} // namespace message_operations
} // namespace ros

#endif // END_EFFECTOR_INTERFACE_MESSAGE_SETEEDIGITALOUTREQUEST_H
