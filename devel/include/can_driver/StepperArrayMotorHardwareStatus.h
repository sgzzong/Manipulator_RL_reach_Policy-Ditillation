// Generated by gencpp from file can_driver/StepperArrayMotorHardwareStatus.msg
// DO NOT EDIT!


#ifndef CAN_DRIVER_MESSAGE_STEPPERARRAYMOTORHARDWARESTATUS_H
#define CAN_DRIVER_MESSAGE_STEPPERARRAYMOTORHARDWARESTATUS_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <can_driver/StepperMotorHardwareStatus.h>

namespace can_driver
{
template <class ContainerAllocator>
struct StepperArrayMotorHardwareStatus_
{
  typedef StepperArrayMotorHardwareStatus_<ContainerAllocator> Type;

  StepperArrayMotorHardwareStatus_()
    : header()
    , motors_hw_status()  {
    }
  StepperArrayMotorHardwareStatus_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , motors_hw_status(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector< ::can_driver::StepperMotorHardwareStatus_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::can_driver::StepperMotorHardwareStatus_<ContainerAllocator> >> _motors_hw_status_type;
  _motors_hw_status_type motors_hw_status;





  typedef boost::shared_ptr< ::can_driver::StepperArrayMotorHardwareStatus_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::can_driver::StepperArrayMotorHardwareStatus_<ContainerAllocator> const> ConstPtr;

}; // struct StepperArrayMotorHardwareStatus_

typedef ::can_driver::StepperArrayMotorHardwareStatus_<std::allocator<void> > StepperArrayMotorHardwareStatus;

typedef boost::shared_ptr< ::can_driver::StepperArrayMotorHardwareStatus > StepperArrayMotorHardwareStatusPtr;
typedef boost::shared_ptr< ::can_driver::StepperArrayMotorHardwareStatus const> StepperArrayMotorHardwareStatusConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::can_driver::StepperArrayMotorHardwareStatus_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::can_driver::StepperArrayMotorHardwareStatus_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::can_driver::StepperArrayMotorHardwareStatus_<ContainerAllocator1> & lhs, const ::can_driver::StepperArrayMotorHardwareStatus_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.motors_hw_status == rhs.motors_hw_status;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::can_driver::StepperArrayMotorHardwareStatus_<ContainerAllocator1> & lhs, const ::can_driver::StepperArrayMotorHardwareStatus_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace can_driver

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::can_driver::StepperArrayMotorHardwareStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::can_driver::StepperArrayMotorHardwareStatus_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::can_driver::StepperArrayMotorHardwareStatus_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::can_driver::StepperArrayMotorHardwareStatus_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::can_driver::StepperArrayMotorHardwareStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::can_driver::StepperArrayMotorHardwareStatus_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::can_driver::StepperArrayMotorHardwareStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "527754ca44ac72feb8c35db3c9254b4e";
  }

  static const char* value(const ::can_driver::StepperArrayMotorHardwareStatus_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x527754ca44ac72feULL;
  static const uint64_t static_value2 = 0xb8c35db3c9254b4eULL;
};

template<class ContainerAllocator>
struct DataType< ::can_driver::StepperArrayMotorHardwareStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "can_driver/StepperArrayMotorHardwareStatus";
  }

  static const char* value(const ::can_driver::StepperArrayMotorHardwareStatus_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::can_driver::StepperArrayMotorHardwareStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Header header\n"
"can_driver/StepperMotorHardwareStatus[] motors_hw_status\n"
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
"MSG: can_driver/StepperMotorHardwareStatus\n"
"niryo_robot_msgs/MotorHeader motor_identity\n"
"\n"
"string firmware_version\n"
"int32 temperature\n"
"int32 voltage\n"
"int32 error\n"
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

  static const char* value(const ::can_driver::StepperArrayMotorHardwareStatus_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::can_driver::StepperArrayMotorHardwareStatus_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.motors_hw_status);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct StepperArrayMotorHardwareStatus_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::can_driver::StepperArrayMotorHardwareStatus_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::can_driver::StepperArrayMotorHardwareStatus_<ContainerAllocator>& v)
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
      Printer< ::can_driver::StepperMotorHardwareStatus_<ContainerAllocator> >::stream(s, indent + "    ", v.motors_hw_status[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // CAN_DRIVER_MESSAGE_STEPPERARRAYMOTORHARDWARESTATUS_H
