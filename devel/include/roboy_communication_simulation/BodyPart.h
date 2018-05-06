// Generated by gencpp from file roboy_communication_simulation/BodyPart.msg
// DO NOT EDIT!


#ifndef ROBOY_COMMUNICATION_SIMULATION_MESSAGE_BODYPART_H
#define ROBOY_COMMUNICATION_SIMULATION_MESSAGE_BODYPART_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Point.h>

namespace roboy_communication_simulation
{
template <class ContainerAllocator>
struct BodyPart_
{
  typedef BodyPart_<ContainerAllocator> Type;

  BodyPart_()
    : roboyID(0)
    , link()
    , position()
    , mass(0.0)  {
    }
  BodyPart_(const ContainerAllocator& _alloc)
    : roboyID(0)
    , link(_alloc)
    , position(_alloc)
    , mass(0.0)  {
  (void)_alloc;
    }



   typedef int32_t _roboyID_type;
  _roboyID_type roboyID;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _link_type;
  _link_type link;

   typedef  ::geometry_msgs::Point_<ContainerAllocator>  _position_type;
  _position_type position;

   typedef double _mass_type;
  _mass_type mass;





  typedef boost::shared_ptr< ::roboy_communication_simulation::BodyPart_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::roboy_communication_simulation::BodyPart_<ContainerAllocator> const> ConstPtr;

}; // struct BodyPart_

typedef ::roboy_communication_simulation::BodyPart_<std::allocator<void> > BodyPart;

typedef boost::shared_ptr< ::roboy_communication_simulation::BodyPart > BodyPartPtr;
typedef boost::shared_ptr< ::roboy_communication_simulation::BodyPart const> BodyPartConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::roboy_communication_simulation::BodyPart_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::roboy_communication_simulation::BodyPart_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace roboy_communication_simulation

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'roboy_communication_simulation': ['/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::roboy_communication_simulation::BodyPart_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roboy_communication_simulation::BodyPart_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::roboy_communication_simulation::BodyPart_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::roboy_communication_simulation::BodyPart_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboy_communication_simulation::BodyPart_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboy_communication_simulation::BodyPart_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::roboy_communication_simulation::BodyPart_<ContainerAllocator> >
{
  static const char* value()
  {
    return "14fe83f1a9f441f48f9c8b6d55f115aa";
  }

  static const char* value(const ::roboy_communication_simulation::BodyPart_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x14fe83f1a9f441f4ULL;
  static const uint64_t static_value2 = 0x8f9c8b6d55f115aaULL;
};

template<class ContainerAllocator>
struct DataType< ::roboy_communication_simulation::BodyPart_<ContainerAllocator> >
{
  static const char* value()
  {
    return "roboy_communication_simulation/BodyPart";
  }

  static const char* value(const ::roboy_communication_simulation::BodyPart_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::roboy_communication_simulation::BodyPart_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 roboyID\n\
string link\n\
geometry_msgs/Point position\n\
float64 mass\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
";
  }

  static const char* value(const ::roboy_communication_simulation::BodyPart_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::roboy_communication_simulation::BodyPart_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.roboyID);
      stream.next(m.link);
      stream.next(m.position);
      stream.next(m.mass);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct BodyPart_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::roboy_communication_simulation::BodyPart_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::roboy_communication_simulation::BodyPart_<ContainerAllocator>& v)
  {
    s << indent << "roboyID: ";
    Printer<int32_t>::stream(s, indent + "  ", v.roboyID);
    s << indent << "link: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.link);
    s << indent << "position: ";
    s << std::endl;
    Printer< ::geometry_msgs::Point_<ContainerAllocator> >::stream(s, indent + "  ", v.position);
    s << indent << "mass: ";
    Printer<double>::stream(s, indent + "  ", v.mass);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOY_COMMUNICATION_SIMULATION_MESSAGE_BODYPART_H
