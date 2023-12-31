// Generated by gencpp from file niryo_robot_poses_handlers/GetWorkspaceRatioRequest.msg
// DO NOT EDIT!


#ifndef NIRYO_ROBOT_POSES_HANDLERS_MESSAGE_GETWORKSPACERATIOREQUEST_H
#define NIRYO_ROBOT_POSES_HANDLERS_MESSAGE_GETWORKSPACERATIOREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace niryo_robot_poses_handlers
{
template <class ContainerAllocator>
struct GetWorkspaceRatioRequest_
{
  typedef GetWorkspaceRatioRequest_<ContainerAllocator> Type;

  GetWorkspaceRatioRequest_()
    : workspace()  {
    }
  GetWorkspaceRatioRequest_(const ContainerAllocator& _alloc)
    : workspace(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _workspace_type;
  _workspace_type workspace;





  typedef boost::shared_ptr< ::niryo_robot_poses_handlers::GetWorkspaceRatioRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::niryo_robot_poses_handlers::GetWorkspaceRatioRequest_<ContainerAllocator> const> ConstPtr;

}; // struct GetWorkspaceRatioRequest_

typedef ::niryo_robot_poses_handlers::GetWorkspaceRatioRequest_<std::allocator<void> > GetWorkspaceRatioRequest;

typedef boost::shared_ptr< ::niryo_robot_poses_handlers::GetWorkspaceRatioRequest > GetWorkspaceRatioRequestPtr;
typedef boost::shared_ptr< ::niryo_robot_poses_handlers::GetWorkspaceRatioRequest const> GetWorkspaceRatioRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::niryo_robot_poses_handlers::GetWorkspaceRatioRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::niryo_robot_poses_handlers::GetWorkspaceRatioRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::niryo_robot_poses_handlers::GetWorkspaceRatioRequest_<ContainerAllocator1> & lhs, const ::niryo_robot_poses_handlers::GetWorkspaceRatioRequest_<ContainerAllocator2> & rhs)
{
  return lhs.workspace == rhs.workspace;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::niryo_robot_poses_handlers::GetWorkspaceRatioRequest_<ContainerAllocator1> & lhs, const ::niryo_robot_poses_handlers::GetWorkspaceRatioRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace niryo_robot_poses_handlers

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::niryo_robot_poses_handlers::GetWorkspaceRatioRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::niryo_robot_poses_handlers::GetWorkspaceRatioRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::niryo_robot_poses_handlers::GetWorkspaceRatioRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::niryo_robot_poses_handlers::GetWorkspaceRatioRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::niryo_robot_poses_handlers::GetWorkspaceRatioRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::niryo_robot_poses_handlers::GetWorkspaceRatioRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::niryo_robot_poses_handlers::GetWorkspaceRatioRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a4c8afcaa65fb464384c5579b2744fb0";
  }

  static const char* value(const ::niryo_robot_poses_handlers::GetWorkspaceRatioRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa4c8afcaa65fb464ULL;
  static const uint64_t static_value2 = 0x384c5579b2744fb0ULL;
};

template<class ContainerAllocator>
struct DataType< ::niryo_robot_poses_handlers::GetWorkspaceRatioRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "niryo_robot_poses_handlers/GetWorkspaceRatioRequest";
  }

  static const char* value(const ::niryo_robot_poses_handlers::GetWorkspaceRatioRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::niryo_robot_poses_handlers::GetWorkspaceRatioRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string workspace\n"
;
  }

  static const char* value(const ::niryo_robot_poses_handlers::GetWorkspaceRatioRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::niryo_robot_poses_handlers::GetWorkspaceRatioRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.workspace);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetWorkspaceRatioRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::niryo_robot_poses_handlers::GetWorkspaceRatioRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::niryo_robot_poses_handlers::GetWorkspaceRatioRequest_<ContainerAllocator>& v)
  {
    s << indent << "workspace: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.workspace);
  }
};

} // namespace message_operations
} // namespace ros

#endif // NIRYO_ROBOT_POSES_HANDLERS_MESSAGE_GETWORKSPACERATIOREQUEST_H
