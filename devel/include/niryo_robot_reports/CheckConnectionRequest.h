// Generated by gencpp from file niryo_robot_reports/CheckConnectionRequest.msg
// DO NOT EDIT!


#ifndef NIRYO_ROBOT_REPORTS_MESSAGE_CHECKCONNECTIONREQUEST_H
#define NIRYO_ROBOT_REPORTS_MESSAGE_CHECKCONNECTIONREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <niryo_robot_reports/Service.h>

namespace niryo_robot_reports
{
template <class ContainerAllocator>
struct CheckConnectionRequest_
{
  typedef CheckConnectionRequest_<ContainerAllocator> Type;

  CheckConnectionRequest_()
    : service()  {
    }
  CheckConnectionRequest_(const ContainerAllocator& _alloc)
    : service(_alloc)  {
  (void)_alloc;
    }



   typedef  ::niryo_robot_reports::Service_<ContainerAllocator>  _service_type;
  _service_type service;





  typedef boost::shared_ptr< ::niryo_robot_reports::CheckConnectionRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::niryo_robot_reports::CheckConnectionRequest_<ContainerAllocator> const> ConstPtr;

}; // struct CheckConnectionRequest_

typedef ::niryo_robot_reports::CheckConnectionRequest_<std::allocator<void> > CheckConnectionRequest;

typedef boost::shared_ptr< ::niryo_robot_reports::CheckConnectionRequest > CheckConnectionRequestPtr;
typedef boost::shared_ptr< ::niryo_robot_reports::CheckConnectionRequest const> CheckConnectionRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::niryo_robot_reports::CheckConnectionRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::niryo_robot_reports::CheckConnectionRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::niryo_robot_reports::CheckConnectionRequest_<ContainerAllocator1> & lhs, const ::niryo_robot_reports::CheckConnectionRequest_<ContainerAllocator2> & rhs)
{
  return lhs.service == rhs.service;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::niryo_robot_reports::CheckConnectionRequest_<ContainerAllocator1> & lhs, const ::niryo_robot_reports::CheckConnectionRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace niryo_robot_reports

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::niryo_robot_reports::CheckConnectionRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::niryo_robot_reports::CheckConnectionRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::niryo_robot_reports::CheckConnectionRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::niryo_robot_reports::CheckConnectionRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::niryo_robot_reports::CheckConnectionRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::niryo_robot_reports::CheckConnectionRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::niryo_robot_reports::CheckConnectionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "fe454b42d2accd355d005af092b3458b";
  }

  static const char* value(const ::niryo_robot_reports::CheckConnectionRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xfe454b42d2accd35ULL;
  static const uint64_t static_value2 = 0x5d005af092b3458bULL;
};

template<class ContainerAllocator>
struct DataType< ::niryo_robot_reports::CheckConnectionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "niryo_robot_reports/CheckConnectionRequest";
  }

  static const char* value(const ::niryo_robot_reports::CheckConnectionRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::niryo_robot_reports::CheckConnectionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Service service\n"
"\n"
"================================================================================\n"
"MSG: niryo_robot_reports/Service\n"
"int8 DAILY_REPORTS = 0\n"
"int8 TEST_REPORTS = 1\n"
"int8 ALERT_REPORTS = 2\n"
"int8 AUTO_DIAGNOSIS_REPORTS = 3\n"
"\n"
"int8 to_test\n"
;
  }

  static const char* value(const ::niryo_robot_reports::CheckConnectionRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::niryo_robot_reports::CheckConnectionRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.service);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CheckConnectionRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::niryo_robot_reports::CheckConnectionRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::niryo_robot_reports::CheckConnectionRequest_<ContainerAllocator>& v)
  {
    s << indent << "service: ";
    s << std::endl;
    Printer< ::niryo_robot_reports::Service_<ContainerAllocator> >::stream(s, indent + "  ", v.service);
  }
};

} // namespace message_operations
} // namespace ros

#endif // NIRYO_ROBOT_REPORTS_MESSAGE_CHECKCONNECTIONREQUEST_H
