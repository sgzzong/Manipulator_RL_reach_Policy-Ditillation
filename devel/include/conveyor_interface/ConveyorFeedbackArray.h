// Generated by gencpp from file conveyor_interface/ConveyorFeedbackArray.msg
// DO NOT EDIT!


#ifndef CONVEYOR_INTERFACE_MESSAGE_CONVEYORFEEDBACKARRAY_H
#define CONVEYOR_INTERFACE_MESSAGE_CONVEYORFEEDBACKARRAY_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <conveyor_interface/ConveyorFeedback.h>

namespace conveyor_interface
{
template <class ContainerAllocator>
struct ConveyorFeedbackArray_
{
  typedef ConveyorFeedbackArray_<ContainerAllocator> Type;

  ConveyorFeedbackArray_()
    : conveyors()  {
    }
  ConveyorFeedbackArray_(const ContainerAllocator& _alloc)
    : conveyors(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::conveyor_interface::ConveyorFeedback_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::conveyor_interface::ConveyorFeedback_<ContainerAllocator> >> _conveyors_type;
  _conveyors_type conveyors;





  typedef boost::shared_ptr< ::conveyor_interface::ConveyorFeedbackArray_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::conveyor_interface::ConveyorFeedbackArray_<ContainerAllocator> const> ConstPtr;

}; // struct ConveyorFeedbackArray_

typedef ::conveyor_interface::ConveyorFeedbackArray_<std::allocator<void> > ConveyorFeedbackArray;

typedef boost::shared_ptr< ::conveyor_interface::ConveyorFeedbackArray > ConveyorFeedbackArrayPtr;
typedef boost::shared_ptr< ::conveyor_interface::ConveyorFeedbackArray const> ConveyorFeedbackArrayConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::conveyor_interface::ConveyorFeedbackArray_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::conveyor_interface::ConveyorFeedbackArray_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::conveyor_interface::ConveyorFeedbackArray_<ContainerAllocator1> & lhs, const ::conveyor_interface::ConveyorFeedbackArray_<ContainerAllocator2> & rhs)
{
  return lhs.conveyors == rhs.conveyors;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::conveyor_interface::ConveyorFeedbackArray_<ContainerAllocator1> & lhs, const ::conveyor_interface::ConveyorFeedbackArray_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace conveyor_interface

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::conveyor_interface::ConveyorFeedbackArray_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::conveyor_interface::ConveyorFeedbackArray_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::conveyor_interface::ConveyorFeedbackArray_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::conveyor_interface::ConveyorFeedbackArray_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::conveyor_interface::ConveyorFeedbackArray_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::conveyor_interface::ConveyorFeedbackArray_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::conveyor_interface::ConveyorFeedbackArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "40390fad55d7b855b36296e05b77db14";
  }

  static const char* value(const ::conveyor_interface::ConveyorFeedbackArray_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x40390fad55d7b855ULL;
  static const uint64_t static_value2 = 0xb36296e05b77db14ULL;
};

template<class ContainerAllocator>
struct DataType< ::conveyor_interface::ConveyorFeedbackArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "conveyor_interface/ConveyorFeedbackArray";
  }

  static const char* value(const ::conveyor_interface::ConveyorFeedbackArray_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::conveyor_interface::ConveyorFeedbackArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "conveyor_interface/ConveyorFeedback[] conveyors\n"
"================================================================================\n"
"MSG: conveyor_interface/ConveyorFeedback\n"
"\n"
"#Conveyor id ( either 12 or 18)\n"
"uint8 conveyor_id\n"
"#Conveyor Connection state ( if it is enabled) \n"
"bool connection_state\n"
"# Conveyor Controls state : ON or OFF\n"
"bool running\n"
"# Conveyor Speed ( 1-> 100 %)\n"
"int16 speed\n"
"# Conveyor direction ( backward or forward)\n"
"int8 direction\n"
;
  }

  static const char* value(const ::conveyor_interface::ConveyorFeedbackArray_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::conveyor_interface::ConveyorFeedbackArray_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.conveyors);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ConveyorFeedbackArray_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::conveyor_interface::ConveyorFeedbackArray_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::conveyor_interface::ConveyorFeedbackArray_<ContainerAllocator>& v)
  {
    s << indent << "conveyors[]" << std::endl;
    for (size_t i = 0; i < v.conveyors.size(); ++i)
    {
      s << indent << "  conveyors[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::conveyor_interface::ConveyorFeedback_<ContainerAllocator> >::stream(s, indent + "    ", v.conveyors[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // CONVEYOR_INTERFACE_MESSAGE_CONVEYORFEEDBACKARRAY_H
