// Generated by gencpp from file niryo_robot_led_ring/LedRingAnimation.msg
// DO NOT EDIT!


#ifndef NIRYO_ROBOT_LED_RING_MESSAGE_LEDRINGANIMATION_H
#define NIRYO_ROBOT_LED_RING_MESSAGE_LEDRINGANIMATION_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace niryo_robot_led_ring
{
template <class ContainerAllocator>
struct LedRingAnimation_
{
  typedef LedRingAnimation_<ContainerAllocator> Type;

  LedRingAnimation_()
    : animation(0)  {
    }
  LedRingAnimation_(const ContainerAllocator& _alloc)
    : animation(0)  {
  (void)_alloc;
    }



   typedef int32_t _animation_type;
  _animation_type animation;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(NONE)
  #undef NONE
#endif
#if defined(_WIN32) && defined(SOLID)
  #undef SOLID
#endif
#if defined(_WIN32) && defined(FLASHING)
  #undef FLASHING
#endif
#if defined(_WIN32) && defined(ALTERNATE)
  #undef ALTERNATE
#endif
#if defined(_WIN32) && defined(CHASE)
  #undef CHASE
#endif
#if defined(_WIN32) && defined(COLOR_WIPE)
  #undef COLOR_WIPE
#endif
#if defined(_WIN32) && defined(RAINBOW)
  #undef RAINBOW
#endif
#if defined(_WIN32) && defined(RAINBOW_CYLE)
  #undef RAINBOW_CYLE
#endif
#if defined(_WIN32) && defined(RAINBOW_CHASE)
  #undef RAINBOW_CHASE
#endif
#if defined(_WIN32) && defined(GO_UP)
  #undef GO_UP
#endif
#if defined(_WIN32) && defined(GO_UP_AND_DOWN)
  #undef GO_UP_AND_DOWN
#endif
#if defined(_WIN32) && defined(BREATH)
  #undef BREATH
#endif
#if defined(_WIN32) && defined(SNAKE)
  #undef SNAKE
#endif
#if defined(_WIN32) && defined(CUSTOM)
  #undef CUSTOM
#endif

  enum {
    NONE = -1,
    SOLID = 1,
    FLASHING = 2,
    ALTERNATE = 3,
    CHASE = 4,
    COLOR_WIPE = 5,
    RAINBOW = 6,
    RAINBOW_CYLE = 7,
    RAINBOW_CHASE = 8,
    GO_UP = 9,
    GO_UP_AND_DOWN = 10,
    BREATH = 11,
    SNAKE = 12,
    CUSTOM = 13,
  };


  typedef boost::shared_ptr< ::niryo_robot_led_ring::LedRingAnimation_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::niryo_robot_led_ring::LedRingAnimation_<ContainerAllocator> const> ConstPtr;

}; // struct LedRingAnimation_

typedef ::niryo_robot_led_ring::LedRingAnimation_<std::allocator<void> > LedRingAnimation;

typedef boost::shared_ptr< ::niryo_robot_led_ring::LedRingAnimation > LedRingAnimationPtr;
typedef boost::shared_ptr< ::niryo_robot_led_ring::LedRingAnimation const> LedRingAnimationConstPtr;

// constants requiring out of line definition

   

   

   

   

   

   

   

   

   

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::niryo_robot_led_ring::LedRingAnimation_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::niryo_robot_led_ring::LedRingAnimation_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::niryo_robot_led_ring::LedRingAnimation_<ContainerAllocator1> & lhs, const ::niryo_robot_led_ring::LedRingAnimation_<ContainerAllocator2> & rhs)
{
  return lhs.animation == rhs.animation;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::niryo_robot_led_ring::LedRingAnimation_<ContainerAllocator1> & lhs, const ::niryo_robot_led_ring::LedRingAnimation_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace niryo_robot_led_ring

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::niryo_robot_led_ring::LedRingAnimation_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::niryo_robot_led_ring::LedRingAnimation_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::niryo_robot_led_ring::LedRingAnimation_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::niryo_robot_led_ring::LedRingAnimation_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::niryo_robot_led_ring::LedRingAnimation_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::niryo_robot_led_ring::LedRingAnimation_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::niryo_robot_led_ring::LedRingAnimation_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2988219586581fda2dc251a25b0a4d08";
  }

  static const char* value(const ::niryo_robot_led_ring::LedRingAnimation_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2988219586581fdaULL;
  static const uint64_t static_value2 = 0x2dc251a25b0a4d08ULL;
};

template<class ContainerAllocator>
struct DataType< ::niryo_robot_led_ring::LedRingAnimation_<ContainerAllocator> >
{
  static const char* value()
  {
    return "niryo_robot_led_ring/LedRingAnimation";
  }

  static const char* value(const ::niryo_robot_led_ring::LedRingAnimation_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::niryo_robot_led_ring::LedRingAnimation_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 NONE = -1\n"
"int32 SOLID = 1\n"
"int32 FLASHING = 2   \n"
"int32 ALTERNATE = 3  \n"
"int32 CHASE = 4       \n"
"int32 COLOR_WIPE = 5   \n"
"int32 RAINBOW = 6\n"
"int32 RAINBOW_CYLE = 7\n"
"int32 RAINBOW_CHASE = 8\n"
"int32 GO_UP = 9\n"
"int32 GO_UP_AND_DOWN = 10\n"
"int32 BREATH = 11\n"
"int32 SNAKE = 12\n"
"int32 CUSTOM = 13\n"
"\n"
"int32 animation\n"
;
  }

  static const char* value(const ::niryo_robot_led_ring::LedRingAnimation_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::niryo_robot_led_ring::LedRingAnimation_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.animation);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct LedRingAnimation_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::niryo_robot_led_ring::LedRingAnimation_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::niryo_robot_led_ring::LedRingAnimation_<ContainerAllocator>& v)
  {
    s << indent << "animation: ";
    Printer<int32_t>::stream(s, indent + "  ", v.animation);
  }
};

} // namespace message_operations
} // namespace ros

#endif // NIRYO_ROBOT_LED_RING_MESSAGE_LEDRINGANIMATION_H