// Generated by gencpp from file niryo_robot_rpi/DigitalIO.msg
// DO NOT EDIT!


#ifndef NIRYO_ROBOT_RPI_MESSAGE_DIGITALIO_H
#define NIRYO_ROBOT_RPI_MESSAGE_DIGITALIO_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace niryo_robot_rpi
{
template <class ContainerAllocator>
struct DigitalIO_
{
  typedef DigitalIO_<ContainerAllocator> Type;

  DigitalIO_()
    : name()
    , value(false)  {
    }
  DigitalIO_(const ContainerAllocator& _alloc)
    : name(_alloc)
    , value(false)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _name_type;
  _name_type name;

   typedef uint8_t _value_type;
  _value_type value;





  typedef boost::shared_ptr< ::niryo_robot_rpi::DigitalIO_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::niryo_robot_rpi::DigitalIO_<ContainerAllocator> const> ConstPtr;

}; // struct DigitalIO_

typedef ::niryo_robot_rpi::DigitalIO_<std::allocator<void> > DigitalIO;

typedef boost::shared_ptr< ::niryo_robot_rpi::DigitalIO > DigitalIOPtr;
typedef boost::shared_ptr< ::niryo_robot_rpi::DigitalIO const> DigitalIOConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::niryo_robot_rpi::DigitalIO_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::niryo_robot_rpi::DigitalIO_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::niryo_robot_rpi::DigitalIO_<ContainerAllocator1> & lhs, const ::niryo_robot_rpi::DigitalIO_<ContainerAllocator2> & rhs)
{
  return lhs.name == rhs.name &&
    lhs.value == rhs.value;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::niryo_robot_rpi::DigitalIO_<ContainerAllocator1> & lhs, const ::niryo_robot_rpi::DigitalIO_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace niryo_robot_rpi

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::niryo_robot_rpi::DigitalIO_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::niryo_robot_rpi::DigitalIO_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::niryo_robot_rpi::DigitalIO_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::niryo_robot_rpi::DigitalIO_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::niryo_robot_rpi::DigitalIO_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::niryo_robot_rpi::DigitalIO_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::niryo_robot_rpi::DigitalIO_<ContainerAllocator> >
{
  static const char* value()
  {
    return "23f05028c1a699fb83e22401228c3a9e";
  }

  static const char* value(const ::niryo_robot_rpi::DigitalIO_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x23f05028c1a699fbULL;
  static const uint64_t static_value2 = 0x83e22401228c3a9eULL;
};

template<class ContainerAllocator>
struct DataType< ::niryo_robot_rpi::DigitalIO_<ContainerAllocator> >
{
  static const char* value()
  {
    return "niryo_robot_rpi/DigitalIO";
  }

  static const char* value(const ::niryo_robot_rpi::DigitalIO_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::niryo_robot_rpi::DigitalIO_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string name\n"
"bool value\n"
;
  }

  static const char* value(const ::niryo_robot_rpi::DigitalIO_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::niryo_robot_rpi::DigitalIO_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.name);
      stream.next(m.value);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DigitalIO_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::niryo_robot_rpi::DigitalIO_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::niryo_robot_rpi::DigitalIO_<ContainerAllocator>& v)
  {
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.name);
    s << indent << "value: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.value);
  }
};

} // namespace message_operations
} // namespace ros

#endif // NIRYO_ROBOT_RPI_MESSAGE_DIGITALIO_H
