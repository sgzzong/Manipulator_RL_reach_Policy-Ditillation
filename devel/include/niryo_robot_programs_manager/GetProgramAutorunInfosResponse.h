// Generated by gencpp from file niryo_robot_programs_manager/GetProgramAutorunInfosResponse.msg
// DO NOT EDIT!


#ifndef NIRYO_ROBOT_PROGRAMS_MANAGER_MESSAGE_GETPROGRAMAUTORUNINFOSRESPONSE_H
#define NIRYO_ROBOT_PROGRAMS_MANAGER_MESSAGE_GETPROGRAMAUTORUNINFOSRESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <niryo_robot_programs_manager/ProgramLanguage.h>

namespace niryo_robot_programs_manager
{
template <class ContainerAllocator>
struct GetProgramAutorunInfosResponse_
{
  typedef GetProgramAutorunInfosResponse_<ContainerAllocator> Type;

  GetProgramAutorunInfosResponse_()
    : status(0)
    , message()
    , language()
    , name()
    , mode(0)  {
    }
  GetProgramAutorunInfosResponse_(const ContainerAllocator& _alloc)
    : status(0)
    , message(_alloc)
    , language(_alloc)
    , name(_alloc)
    , mode(0)  {
  (void)_alloc;
    }



   typedef int32_t _status_type;
  _status_type status;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _message_type;
  _message_type message;

   typedef  ::niryo_robot_programs_manager::ProgramLanguage_<ContainerAllocator>  _language_type;
  _language_type language;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _name_type;
  _name_type name;

   typedef int8_t _mode_type;
  _mode_type mode;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(ONE_SHOT)
  #undef ONE_SHOT
#endif
#if defined(_WIN32) && defined(LOOP)
  #undef LOOP
#endif

  enum {
    ONE_SHOT = 1,
    LOOP = 2,
  };


  typedef boost::shared_ptr< ::niryo_robot_programs_manager::GetProgramAutorunInfosResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::niryo_robot_programs_manager::GetProgramAutorunInfosResponse_<ContainerAllocator> const> ConstPtr;

}; // struct GetProgramAutorunInfosResponse_

typedef ::niryo_robot_programs_manager::GetProgramAutorunInfosResponse_<std::allocator<void> > GetProgramAutorunInfosResponse;

typedef boost::shared_ptr< ::niryo_robot_programs_manager::GetProgramAutorunInfosResponse > GetProgramAutorunInfosResponsePtr;
typedef boost::shared_ptr< ::niryo_robot_programs_manager::GetProgramAutorunInfosResponse const> GetProgramAutorunInfosResponseConstPtr;

// constants requiring out of line definition

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::niryo_robot_programs_manager::GetProgramAutorunInfosResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::niryo_robot_programs_manager::GetProgramAutorunInfosResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::niryo_robot_programs_manager::GetProgramAutorunInfosResponse_<ContainerAllocator1> & lhs, const ::niryo_robot_programs_manager::GetProgramAutorunInfosResponse_<ContainerAllocator2> & rhs)
{
  return lhs.status == rhs.status &&
    lhs.message == rhs.message &&
    lhs.language == rhs.language &&
    lhs.name == rhs.name &&
    lhs.mode == rhs.mode;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::niryo_robot_programs_manager::GetProgramAutorunInfosResponse_<ContainerAllocator1> & lhs, const ::niryo_robot_programs_manager::GetProgramAutorunInfosResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace niryo_robot_programs_manager

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::niryo_robot_programs_manager::GetProgramAutorunInfosResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::niryo_robot_programs_manager::GetProgramAutorunInfosResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::niryo_robot_programs_manager::GetProgramAutorunInfosResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::niryo_robot_programs_manager::GetProgramAutorunInfosResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::niryo_robot_programs_manager::GetProgramAutorunInfosResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::niryo_robot_programs_manager::GetProgramAutorunInfosResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::niryo_robot_programs_manager::GetProgramAutorunInfosResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "61094f5162d09fb1bd7ad309ed1f2f8a";
  }

  static const char* value(const ::niryo_robot_programs_manager::GetProgramAutorunInfosResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x61094f5162d09fb1ULL;
  static const uint64_t static_value2 = 0xbd7ad309ed1f2f8aULL;
};

template<class ContainerAllocator>
struct DataType< ::niryo_robot_programs_manager::GetProgramAutorunInfosResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "niryo_robot_programs_manager/GetProgramAutorunInfosResponse";
  }

  static const char* value(const ::niryo_robot_programs_manager::GetProgramAutorunInfosResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::niryo_robot_programs_manager::GetProgramAutorunInfosResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 status\n"
"string message\n"
"\n"
"niryo_robot_programs_manager/ProgramLanguage language\n"
"string name\n"
"\n"
"# Mode\n"
"int8 ONE_SHOT = 1\n"
"int8 LOOP = 2\n"
"\n"
"int8 mode\n"
"\n"
"\n"
"================================================================================\n"
"MSG: niryo_robot_programs_manager/ProgramLanguage\n"
"int8 NONE = -1\n"
"\n"
"int8 ALL = 0\n"
"\n"
"# Runnable\n"
"int8 PYTHON2 = 1\n"
"int8 PYTHON3 = 2\n"
"\n"
"# Not Runnable\n"
"int8 BLOCKLY = 66\n"
"\n"
"int8 used\n"
;
  }

  static const char* value(const ::niryo_robot_programs_manager::GetProgramAutorunInfosResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::niryo_robot_programs_manager::GetProgramAutorunInfosResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.status);
      stream.next(m.message);
      stream.next(m.language);
      stream.next(m.name);
      stream.next(m.mode);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetProgramAutorunInfosResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::niryo_robot_programs_manager::GetProgramAutorunInfosResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::niryo_robot_programs_manager::GetProgramAutorunInfosResponse_<ContainerAllocator>& v)
  {
    s << indent << "status: ";
    Printer<int32_t>::stream(s, indent + "  ", v.status);
    s << indent << "message: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.message);
    s << indent << "language: ";
    s << std::endl;
    Printer< ::niryo_robot_programs_manager::ProgramLanguage_<ContainerAllocator> >::stream(s, indent + "  ", v.language);
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.name);
    s << indent << "mode: ";
    Printer<int8_t>::stream(s, indent + "  ", v.mode);
  }
};

} // namespace message_operations
} // namespace ros

#endif // NIRYO_ROBOT_PROGRAMS_MANAGER_MESSAGE_GETPROGRAMAUTORUNINFOSRESPONSE_H
