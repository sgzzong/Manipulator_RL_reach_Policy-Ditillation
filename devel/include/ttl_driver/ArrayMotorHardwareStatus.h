// Generated by gencpp from file ttl_driver/ArrayMotorHardwareStatus.msg
// DO NOT EDIT!


#ifndef TTL_DRIVER_MESSAGE_ARRAYMOTORHARDWARESTATUS_H
#define TTL_DRIVER_MESSAGE_ARRAYMOTORHARDWARESTATUS_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <ttl_driver/MotorHardwareStatus.h>

namespace ttl_driver
{
template <class ContainerAllocator>
struct ArrayMotorHardwareStatus_
{
  typedef ArrayMotorHardwareStatus_<ContainerAllocator> Type;

  ArrayMotorHardwareStatus_()
    : header()
    , motors_hw_status()  {
    }
  ArrayMotorHardwareStatus_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , motors_hw_status(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector< ::ttl_driver::MotorHardwareStatus_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::ttl_driver::MotorHardwareStatus_<ContainerAllocator> >> _motors_hw_status_type;
  _motors_hw_status_type motors_hw_status;





  typedef boost::shared_ptr< ::ttl_driver::ArrayMotorHardwareStatus_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ttl_driver::ArrayMotorHardwareStatus_<ContainerAllocator> const> ConstPtr;

}; // struct ArrayMotorHardwareStatus_

typedef ::ttl_driver::ArrayMotorHardwareStatus_<std::allocator<void> > ArrayMotorHardwareStatus;

typedef boost::shared_ptr< ::ttl_driver::ArrayMotorHardwareStatus > ArrayMotorHardwareStatusPtr;
typedef boost::shared_ptr< ::ttl_driver::ArrayMotorHardwareStatus const> ArrayMotorHardwareStatusConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ttl_driver::ArrayMotorHardwareStatus_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ttl_driver::ArrayMotorHardwareStatus_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::ttl_driver::ArrayMotorHardwareStatus_<ContainerAllocator1> & lhs, const ::ttl_driver::ArrayMotorHardwareStatus_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.motors_hw_status == rhs.motors_hw_status;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::ttl_driver::ArrayMotorHardwareStatus_<ContainerAllocator1> & lhs, const ::ttl_driver::ArrayMotorHardwareStatus_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace ttl_driver

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::ttl_driver::ArrayMotorHardwareStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ttl_driver::ArrayMotorHardwareStatus_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ttl_driver::ArrayMotorHardwareStatus_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ttl_driver::ArrayMotorHardwareStatus_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ttl_driver::ArrayMotorHardwareStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ttl_driver::ArrayMotorHardwareStatus_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ttl_driver::ArrayMotorHardwareStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d7b82f2c3ebd12de467db5ce48b4b5c9";
  }

  static const char* value(const ::ttl_driver::ArrayMotorHardwareStatus_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd7b82f2c3ebd12deULL;
  static const uint64_t static_value2 = 0x467db5ce48b4b5c9ULL;
};

template<class ContainerAllocator>
struct DataType< ::ttl_driver::ArrayMotorHardwareStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ttl_driver/ArrayMotorHardwareStatus";
  }

  static const char* value(const ::ttl_driver::ArrayMotorHardwareStatus_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ttl_driver::ArrayMotorHardwareStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Header header\n"
"ttl_driver/MotorHardwareStatus[] motors_hw_status\n"
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
"MSG: ttl_driver/MotorHardwareStatus\n"
"niryo_robot_msgs/MotorHeader motor_identity\n"
"\n"
"string firmware_version\n"
"uint32 temperature\n"
"float64 voltage\n"
"uint32 error\n"
"string error_msg\n"
"\n"
"================================================================================\n"
"MSG: niryo_robot_msgs/MotorHeader\n"
"uint8 motor_id\n"
"\n"
"uint8 motor_type\n"
"uint8 MOTOR_TYPE_STEPPER=1\n"
"uint8 MOTOR_TYPE_XL430=2\n"
"uint8 MOTOR_TYPE_XL320=3\n"
"uint8 MOTOR_TYPE_XL330=4\n"
"uint8 MOROR_TYPE_XC430=5\n"
"uint8 MOTOR_TYPE_END_EFFECTOR=10\n"
"\n"
;
  }

  static const char* value(const ::ttl_driver::ArrayMotorHardwareStatus_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ttl_driver::ArrayMotorHardwareStatus_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.motors_hw_status);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ArrayMotorHardwareStatus_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ttl_driver::ArrayMotorHardwareStatus_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ttl_driver::ArrayMotorHardwareStatus_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "motors_hw_status[]" << std::endl;
    for (size_t i = 0; i < v.motors_hw_status.size(); ++i)
    {
      s << indent << "  motors_hw_status[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::ttl_driver::MotorHardwareStatus_<ContainerAllocator> >::stream(s, indent + "    ", v.motors_hw_status[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // TTL_DRIVER_MESSAGE_ARRAYMOTORHARDWARESTATUS_H