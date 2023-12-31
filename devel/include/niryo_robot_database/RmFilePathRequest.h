// Generated by gencpp from file niryo_robot_database/RmFilePathRequest.msg
// DO NOT EDIT!


#ifndef NIRYO_ROBOT_DATABASE_MESSAGE_RMFILEPATHREQUEST_H
#define NIRYO_ROBOT_DATABASE_MESSAGE_RMFILEPATHREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace niryo_robot_database
{
template <class ContainerAllocator>
struct RmFilePathRequest_
{
  typedef RmFilePathRequest_<ContainerAllocator> Type;

  RmFilePathRequest_()
    : id()  {
    }
  RmFilePathRequest_(const ContainerAllocator& _alloc)
    : id(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _id_type;
  _id_type id;





  typedef boost::shared_ptr< ::niryo_robot_database::RmFilePathRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::niryo_robot_database::RmFilePathRequest_<ContainerAllocator> const> ConstPtr;

}; // struct RmFilePathRequest_

typedef ::niryo_robot_database::RmFilePathRequest_<std::allocator<void> > RmFilePathRequest;

typedef boost::shared_ptr< ::niryo_robot_database::RmFilePathRequest > RmFilePathRequestPtr;
typedef boost::shared_ptr< ::niryo_robot_database::RmFilePathRequest const> RmFilePathRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::niryo_robot_database::RmFilePathRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::niryo_robot_database::RmFilePathRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::niryo_robot_database::RmFilePathRequest_<ContainerAllocator1> & lhs, const ::niryo_robot_database::RmFilePathRequest_<ContainerAllocator2> & rhs)
{
  return lhs.id == rhs.id;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::niryo_robot_database::RmFilePathRequest_<ContainerAllocator1> & lhs, const ::niryo_robot_database::RmFilePathRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace niryo_robot_database

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::niryo_robot_database::RmFilePathRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::niryo_robot_database::RmFilePathRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::niryo_robot_database::RmFilePathRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::niryo_robot_database::RmFilePathRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::niryo_robot_database::RmFilePathRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::niryo_robot_database::RmFilePathRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::niryo_robot_database::RmFilePathRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bbfcda76036ebbe3d36caf7af80b260c";
  }

  static const char* value(const ::niryo_robot_database::RmFilePathRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xbbfcda76036ebbe3ULL;
  static const uint64_t static_value2 = 0xd36caf7af80b260cULL;
};

template<class ContainerAllocator>
struct DataType< ::niryo_robot_database::RmFilePathRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "niryo_robot_database/RmFilePathRequest";
  }

  static const char* value(const ::niryo_robot_database::RmFilePathRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::niryo_robot_database::RmFilePathRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string id\n"
;
  }

  static const char* value(const ::niryo_robot_database::RmFilePathRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::niryo_robot_database::RmFilePathRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.id);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RmFilePathRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::niryo_robot_database::RmFilePathRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::niryo_robot_database::RmFilePathRequest_<ContainerAllocator>& v)
  {
    s << indent << "id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.id);
  }
};

} // namespace message_operations
} // namespace ros

#endif // NIRYO_ROBOT_DATABASE_MESSAGE_RMFILEPATHREQUEST_H
