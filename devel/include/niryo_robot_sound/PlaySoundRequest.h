// Generated by gencpp from file niryo_robot_sound/PlaySoundRequest.msg
// DO NOT EDIT!


#ifndef NIRYO_ROBOT_SOUND_MESSAGE_PLAYSOUNDREQUEST_H
#define NIRYO_ROBOT_SOUND_MESSAGE_PLAYSOUNDREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace niryo_robot_sound
{
template <class ContainerAllocator>
struct PlaySoundRequest_
{
  typedef PlaySoundRequest_<ContainerAllocator> Type;

  PlaySoundRequest_()
    : sound_name()
    , start_time_sec(0.0)
    , end_time_sec(0.0)
    , wait_end(false)  {
    }
  PlaySoundRequest_(const ContainerAllocator& _alloc)
    : sound_name(_alloc)
    , start_time_sec(0.0)
    , end_time_sec(0.0)
    , wait_end(false)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _sound_name_type;
  _sound_name_type sound_name;

   typedef double _start_time_sec_type;
  _start_time_sec_type start_time_sec;

   typedef double _end_time_sec_type;
  _end_time_sec_type end_time_sec;

   typedef uint8_t _wait_end_type;
  _wait_end_type wait_end;





  typedef boost::shared_ptr< ::niryo_robot_sound::PlaySoundRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::niryo_robot_sound::PlaySoundRequest_<ContainerAllocator> const> ConstPtr;

}; // struct PlaySoundRequest_

typedef ::niryo_robot_sound::PlaySoundRequest_<std::allocator<void> > PlaySoundRequest;

typedef boost::shared_ptr< ::niryo_robot_sound::PlaySoundRequest > PlaySoundRequestPtr;
typedef boost::shared_ptr< ::niryo_robot_sound::PlaySoundRequest const> PlaySoundRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::niryo_robot_sound::PlaySoundRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::niryo_robot_sound::PlaySoundRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::niryo_robot_sound::PlaySoundRequest_<ContainerAllocator1> & lhs, const ::niryo_robot_sound::PlaySoundRequest_<ContainerAllocator2> & rhs)
{
  return lhs.sound_name == rhs.sound_name &&
    lhs.start_time_sec == rhs.start_time_sec &&
    lhs.end_time_sec == rhs.end_time_sec &&
    lhs.wait_end == rhs.wait_end;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::niryo_robot_sound::PlaySoundRequest_<ContainerAllocator1> & lhs, const ::niryo_robot_sound::PlaySoundRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace niryo_robot_sound

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::niryo_robot_sound::PlaySoundRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::niryo_robot_sound::PlaySoundRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::niryo_robot_sound::PlaySoundRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::niryo_robot_sound::PlaySoundRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::niryo_robot_sound::PlaySoundRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::niryo_robot_sound::PlaySoundRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::niryo_robot_sound::PlaySoundRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "85cab4337aa462c58702589444fd5088";
  }

  static const char* value(const ::niryo_robot_sound::PlaySoundRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x85cab4337aa462c5ULL;
  static const uint64_t static_value2 = 0x8702589444fd5088ULL;
};

template<class ContainerAllocator>
struct DataType< ::niryo_robot_sound::PlaySoundRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "niryo_robot_sound/PlaySoundRequest";
  }

  static const char* value(const ::niryo_robot_sound::PlaySoundRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::niryo_robot_sound::PlaySoundRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string sound_name\n"
"\n"
"float64 start_time_sec\n"
"float64 end_time_sec  #if 0 or if end_time_sec>sound_duration the entire sound will be played\n"
"\n"
"bool wait_end\n"
"\n"
;
  }

  static const char* value(const ::niryo_robot_sound::PlaySoundRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::niryo_robot_sound::PlaySoundRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.sound_name);
      stream.next(m.start_time_sec);
      stream.next(m.end_time_sec);
      stream.next(m.wait_end);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PlaySoundRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::niryo_robot_sound::PlaySoundRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::niryo_robot_sound::PlaySoundRequest_<ContainerAllocator>& v)
  {
    s << indent << "sound_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.sound_name);
    s << indent << "start_time_sec: ";
    Printer<double>::stream(s, indent + "  ", v.start_time_sec);
    s << indent << "end_time_sec: ";
    Printer<double>::stream(s, indent + "  ", v.end_time_sec);
    s << indent << "wait_end: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.wait_end);
  }
};

} // namespace message_operations
} // namespace ros

#endif // NIRYO_ROBOT_SOUND_MESSAGE_PLAYSOUNDREQUEST_H