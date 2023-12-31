// Generated by gencpp from file niryo_robot_led_ring/SetLedColorRequest.msg
// DO NOT EDIT!


#ifndef NIRYO_ROBOT_LED_RING_MESSAGE_SETLEDCOLORREQUEST_H
#define NIRYO_ROBOT_LED_RING_MESSAGE_SETLEDCOLORREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/ColorRGBA.h>

namespace niryo_robot_led_ring
{
template <class ContainerAllocator>
struct SetLedColorRequest_
{
  typedef SetLedColorRequest_<ContainerAllocator> Type;

  SetLedColorRequest_()
    : led_id(0)
    , color()  {
    }
  SetLedColorRequest_(const ContainerAllocator& _alloc)
    : led_id(0)
    , color(_alloc)  {
  (void)_alloc;
    }



   typedef int8_t _led_id_type;
  _led_id_type led_id;

   typedef  ::std_msgs::ColorRGBA_<ContainerAllocator>  _color_type;
  _color_type color;





  typedef boost::shared_ptr< ::niryo_robot_led_ring::SetLedColorRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::niryo_robot_led_ring::SetLedColorRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SetLedColorRequest_

typedef ::niryo_robot_led_ring::SetLedColorRequest_<std::allocator<void> > SetLedColorRequest;

typedef boost::shared_ptr< ::niryo_robot_led_ring::SetLedColorRequest > SetLedColorRequestPtr;
typedef boost::shared_ptr< ::niryo_robot_led_ring::SetLedColorRequest const> SetLedColorRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::niryo_robot_led_ring::SetLedColorRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::niryo_robot_led_ring::SetLedColorRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::niryo_robot_led_ring::SetLedColorRequest_<ContainerAllocator1> & lhs, const ::niryo_robot_led_ring::SetLedColorRequest_<ContainerAllocator2> & rhs)
{
  return lhs.led_id == rhs.led_id &&
    lhs.color == rhs.color;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::niryo_robot_led_ring::SetLedColorRequest_<ContainerAllocator1> & lhs, const ::niryo_robot_led_ring::SetLedColorRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace niryo_robot_led_ring

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::niryo_robot_led_ring::SetLedColorRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::niryo_robot_led_ring::SetLedColorRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::niryo_robot_led_ring::SetLedColorRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::niryo_robot_led_ring::SetLedColorRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::niryo_robot_led_ring::SetLedColorRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::niryo_robot_led_ring::SetLedColorRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::niryo_robot_led_ring::SetLedColorRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ba88d05f4d23e23c92263d3a6576ef48";
  }

  static const char* value(const ::niryo_robot_led_ring::SetLedColorRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xba88d05f4d23e23cULL;
  static const uint64_t static_value2 = 0x92263d3a6576ef48ULL;
};

template<class ContainerAllocator>
struct DataType< ::niryo_robot_led_ring::SetLedColorRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "niryo_robot_led_ring/SetLedColorRequest";
  }

  static const char* value(const ::niryo_robot_led_ring::SetLedColorRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::niryo_robot_led_ring::SetLedColorRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int8 led_id\n"
"std_msgs/ColorRGBA color\n"
"\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/ColorRGBA\n"
"float32 r\n"
"float32 g\n"
"float32 b\n"
"float32 a\n"
;
  }

  static const char* value(const ::niryo_robot_led_ring::SetLedColorRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::niryo_robot_led_ring::SetLedColorRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.led_id);
      stream.next(m.color);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetLedColorRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::niryo_robot_led_ring::SetLedColorRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::niryo_robot_led_ring::SetLedColorRequest_<ContainerAllocator>& v)
  {
    s << indent << "led_id: ";
    Printer<int8_t>::stream(s, indent + "  ", v.led_id);
    s << indent << "color: ";
    s << std::endl;
    Printer< ::std_msgs::ColorRGBA_<ContainerAllocator> >::stream(s, indent + "  ", v.color);
  }
};

} // namespace message_operations
} // namespace ros

#endif // NIRYO_ROBOT_LED_RING_MESSAGE_SETLEDCOLORREQUEST_H
