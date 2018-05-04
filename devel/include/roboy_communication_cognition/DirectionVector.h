// Generated by gencpp from file roboy_communication_cognition/DirectionVector.msg
// DO NOT EDIT!


#ifndef ROBOY_COMMUNICATION_COGNITION_MESSAGE_DIRECTIONVECTOR_H
#define ROBOY_COMMUNICATION_COGNITION_MESSAGE_DIRECTIONVECTOR_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace roboy_communication_cognition
{
template <class ContainerAllocator>
struct DirectionVector_
{
  typedef DirectionVector_<ContainerAllocator> Type;

  DirectionVector_()
    : azimutal_angle(0.0)
    , polar_angle(0.0)  {
    }
  DirectionVector_(const ContainerAllocator& _alloc)
    : azimutal_angle(0.0)
    , polar_angle(0.0)  {
  (void)_alloc;
    }



   typedef double _azimutal_angle_type;
  _azimutal_angle_type azimutal_angle;

   typedef double _polar_angle_type;
  _polar_angle_type polar_angle;





  typedef boost::shared_ptr< ::roboy_communication_cognition::DirectionVector_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::roboy_communication_cognition::DirectionVector_<ContainerAllocator> const> ConstPtr;

}; // struct DirectionVector_

typedef ::roboy_communication_cognition::DirectionVector_<std::allocator<void> > DirectionVector;

typedef boost::shared_ptr< ::roboy_communication_cognition::DirectionVector > DirectionVectorPtr;
typedef boost::shared_ptr< ::roboy_communication_cognition::DirectionVector const> DirectionVectorConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::roboy_communication_cognition::DirectionVector_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::roboy_communication_cognition::DirectionVector_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace roboy_communication_cognition

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'roboy_communication_cognition': ['/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::roboy_communication_cognition::DirectionVector_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roboy_communication_cognition::DirectionVector_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::roboy_communication_cognition::DirectionVector_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::roboy_communication_cognition::DirectionVector_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboy_communication_cognition::DirectionVector_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboy_communication_cognition::DirectionVector_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::roboy_communication_cognition::DirectionVector_<ContainerAllocator> >
{
  static const char* value()
  {
    return "32f7ac1c3ed95e6c1aa8e7777879079b";
  }

  static const char* value(const ::roboy_communication_cognition::DirectionVector_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x32f7ac1c3ed95e6cULL;
  static const uint64_t static_value2 = 0x1aa8e7777879079bULL;
};

template<class ContainerAllocator>
struct DataType< ::roboy_communication_cognition::DirectionVector_<ContainerAllocator> >
{
  static const char* value()
  {
    return "roboy_communication_cognition/DirectionVector";
  }

  static const char* value(const ::roboy_communication_cognition::DirectionVector_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::roboy_communication_cognition::DirectionVector_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 azimutal_angle\n\
float64 polar_angle\n\
";
  }

  static const char* value(const ::roboy_communication_cognition::DirectionVector_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::roboy_communication_cognition::DirectionVector_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.azimutal_angle);
      stream.next(m.polar_angle);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DirectionVector_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::roboy_communication_cognition::DirectionVector_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::roboy_communication_cognition::DirectionVector_<ContainerAllocator>& v)
  {
    s << indent << "azimutal_angle: ";
    Printer<double>::stream(s, indent + "  ", v.azimutal_angle);
    s << indent << "polar_angle: ";
    Printer<double>::stream(s, indent + "  ", v.polar_angle);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOY_COMMUNICATION_COGNITION_MESSAGE_DIRECTIONVECTOR_H
