// Generated by gencpp from file niryo_robot_poses_handlers/NiryoPose.msg
// DO NOT EDIT!


#ifndef NIRYO_ROBOT_POSES_HANDLERS_MESSAGE_NIRYOPOSE_H
#define NIRYO_ROBOT_POSES_HANDLERS_MESSAGE_NIRYOPOSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Point.h>
#include <niryo_robot_msgs/RPY.h>
#include <geometry_msgs/Quaternion.h>

namespace niryo_robot_poses_handlers
{
template <class ContainerAllocator>
struct NiryoPose_
{
  typedef NiryoPose_<ContainerAllocator> Type;

  NiryoPose_()
    : name()
    , description()
    , joints()
    , position()
    , rpy()
    , orientation()  {
    }
  NiryoPose_(const ContainerAllocator& _alloc)
    : name(_alloc)
    , description(_alloc)
    , joints(_alloc)
    , position(_alloc)
    , rpy(_alloc)
    , orientation(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _name_type;
  _name_type name;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _description_type;
  _description_type description;

   typedef std::vector<double, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<double>> _joints_type;
  _joints_type joints;

   typedef  ::geometry_msgs::Point_<ContainerAllocator>  _position_type;
  _position_type position;

   typedef  ::niryo_robot_msgs::RPY_<ContainerAllocator>  _rpy_type;
  _rpy_type rpy;

   typedef  ::geometry_msgs::Quaternion_<ContainerAllocator>  _orientation_type;
  _orientation_type orientation;





  typedef boost::shared_ptr< ::niryo_robot_poses_handlers::NiryoPose_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::niryo_robot_poses_handlers::NiryoPose_<ContainerAllocator> const> ConstPtr;

}; // struct NiryoPose_

typedef ::niryo_robot_poses_handlers::NiryoPose_<std::allocator<void> > NiryoPose;

typedef boost::shared_ptr< ::niryo_robot_poses_handlers::NiryoPose > NiryoPosePtr;
typedef boost::shared_ptr< ::niryo_robot_poses_handlers::NiryoPose const> NiryoPoseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::niryo_robot_poses_handlers::NiryoPose_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::niryo_robot_poses_handlers::NiryoPose_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::niryo_robot_poses_handlers::NiryoPose_<ContainerAllocator1> & lhs, const ::niryo_robot_poses_handlers::NiryoPose_<ContainerAllocator2> & rhs)
{
  return lhs.name == rhs.name &&
    lhs.description == rhs.description &&
    lhs.joints == rhs.joints &&
    lhs.position == rhs.position &&
    lhs.rpy == rhs.rpy &&
    lhs.orientation == rhs.orientation;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::niryo_robot_poses_handlers::NiryoPose_<ContainerAllocator1> & lhs, const ::niryo_robot_poses_handlers::NiryoPose_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace niryo_robot_poses_handlers

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::niryo_robot_poses_handlers::NiryoPose_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::niryo_robot_poses_handlers::NiryoPose_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::niryo_robot_poses_handlers::NiryoPose_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::niryo_robot_poses_handlers::NiryoPose_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::niryo_robot_poses_handlers::NiryoPose_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::niryo_robot_poses_handlers::NiryoPose_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::niryo_robot_poses_handlers::NiryoPose_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a39e689d05cb0457bd591ac180b1258a";
  }

  static const char* value(const ::niryo_robot_poses_handlers::NiryoPose_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa39e689d05cb0457ULL;
  static const uint64_t static_value2 = 0xbd591ac180b1258aULL;
};

template<class ContainerAllocator>
struct DataType< ::niryo_robot_poses_handlers::NiryoPose_<ContainerAllocator> >
{
  static const char* value()
  {
    return "niryo_robot_poses_handlers/NiryoPose";
  }

  static const char* value(const ::niryo_robot_poses_handlers::NiryoPose_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::niryo_robot_poses_handlers::NiryoPose_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string name\n"
"string description\n"
"\n"
"float64[] joints \n"
"geometry_msgs/Point position\n"
"niryo_robot_msgs/RPY rpy\n"
"geometry_msgs/Quaternion orientation\n"
"\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: niryo_robot_msgs/RPY\n"
"# roll, pitch and yaw\n"
"\n"
"float64 roll\n"
"float64 pitch\n"
"float64 yaw\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
;
  }

  static const char* value(const ::niryo_robot_poses_handlers::NiryoPose_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::niryo_robot_poses_handlers::NiryoPose_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.name);
      stream.next(m.description);
      stream.next(m.joints);
      stream.next(m.position);
      stream.next(m.rpy);
      stream.next(m.orientation);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct NiryoPose_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::niryo_robot_poses_handlers::NiryoPose_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::niryo_robot_poses_handlers::NiryoPose_<ContainerAllocator>& v)
  {
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.name);
    s << indent << "description: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.description);
    s << indent << "joints[]" << std::endl;
    for (size_t i = 0; i < v.joints.size(); ++i)
    {
      s << indent << "  joints[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.joints[i]);
    }
    s << indent << "position: ";
    s << std::endl;
    Printer< ::geometry_msgs::Point_<ContainerAllocator> >::stream(s, indent + "  ", v.position);
    s << indent << "rpy: ";
    s << std::endl;
    Printer< ::niryo_robot_msgs::RPY_<ContainerAllocator> >::stream(s, indent + "  ", v.rpy);
    s << indent << "orientation: ";
    s << std::endl;
    Printer< ::geometry_msgs::Quaternion_<ContainerAllocator> >::stream(s, indent + "  ", v.orientation);
  }
};

} // namespace message_operations
} // namespace ros

#endif // NIRYO_ROBOT_POSES_HANDLERS_MESSAGE_NIRYOPOSE_H