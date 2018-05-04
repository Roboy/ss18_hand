// Generated by gencpp from file roboy_communication_control/PerformMovementGoal.msg
// DO NOT EDIT!


#ifndef ROBOY_COMMUNICATION_CONTROL_MESSAGE_PERFORMMOVEMENTGOAL_H
#define ROBOY_COMMUNICATION_CONTROL_MESSAGE_PERFORMMOVEMENTGOAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace roboy_communication_control
{
template <class ContainerAllocator>
struct PerformMovementGoal_
{
  typedef PerformMovementGoal_<ContainerAllocator> Type;

  PerformMovementGoal_()
    : action()  {
    }
  PerformMovementGoal_(const ContainerAllocator& _alloc)
    : action(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _action_type;
  _action_type action;





  typedef boost::shared_ptr< ::roboy_communication_control::PerformMovementGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::roboy_communication_control::PerformMovementGoal_<ContainerAllocator> const> ConstPtr;

}; // struct PerformMovementGoal_

typedef ::roboy_communication_control::PerformMovementGoal_<std::allocator<void> > PerformMovementGoal;

typedef boost::shared_ptr< ::roboy_communication_control::PerformMovementGoal > PerformMovementGoalPtr;
typedef boost::shared_ptr< ::roboy_communication_control::PerformMovementGoal const> PerformMovementGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::roboy_communication_control::PerformMovementGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::roboy_communication_control::PerformMovementGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace roboy_communication_control

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'roboy_communication_control': ['/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg', '/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::roboy_communication_control::PerformMovementGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roboy_communication_control::PerformMovementGoal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::roboy_communication_control::PerformMovementGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::roboy_communication_control::PerformMovementGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboy_communication_control::PerformMovementGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboy_communication_control::PerformMovementGoal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::roboy_communication_control::PerformMovementGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "7757aad79fa343e61bc69ed7f1b7666d";
  }

  static const char* value(const ::roboy_communication_control::PerformMovementGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x7757aad79fa343e6ULL;
  static const uint64_t static_value2 = 0x1bc69ed7f1b7666dULL;
};

template<class ContainerAllocator>
struct DataType< ::roboy_communication_control::PerformMovementGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "roboy_communication_control/PerformMovementGoal";
  }

  static const char* value(const ::roboy_communication_control::PerformMovementGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::roboy_communication_control::PerformMovementGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
string action\n\
";
  }

  static const char* value(const ::roboy_communication_control::PerformMovementGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::roboy_communication_control::PerformMovementGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.action);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PerformMovementGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::roboy_communication_control::PerformMovementGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::roboy_communication_control::PerformMovementGoal_<ContainerAllocator>& v)
  {
    s << indent << "action: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.action);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOY_COMMUNICATION_CONTROL_MESSAGE_PERFORMMOVEMENTGOAL_H
