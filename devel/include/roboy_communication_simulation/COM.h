// Generated by gencpp from file roboy_communication_simulation/COM.msg
// DO NOT EDIT!


#ifndef ROBOY_COMMUNICATION_SIMULATION_MESSAGE_COM_H
#define ROBOY_COMMUNICATION_SIMULATION_MESSAGE_COM_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Point.h>
#include <geometry_msgs/Point.h>

namespace roboy_communication_simulation
{
template <class ContainerAllocator>
struct COM_
{
  typedef COM_<ContainerAllocator> Type;

  COM_()
    : roboyID(0)
    , Position()
    , Velocity()  {
    }
  COM_(const ContainerAllocator& _alloc)
    : roboyID(0)
    , Position(_alloc)
    , Velocity(_alloc)  {
  (void)_alloc;
    }



   typedef int32_t _roboyID_type;
  _roboyID_type roboyID;

   typedef  ::geometry_msgs::Point_<ContainerAllocator>  _Position_type;
  _Position_type Position;

   typedef  ::geometry_msgs::Point_<ContainerAllocator>  _Velocity_type;
  _Velocity_type Velocity;





  typedef boost::shared_ptr< ::roboy_communication_simulation::COM_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::roboy_communication_simulation::COM_<ContainerAllocator> const> ConstPtr;

}; // struct COM_

typedef ::roboy_communication_simulation::COM_<std::allocator<void> > COM;

typedef boost::shared_ptr< ::roboy_communication_simulation::COM > COMPtr;
typedef boost::shared_ptr< ::roboy_communication_simulation::COM const> COMConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::roboy_communication_simulation::COM_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::roboy_communication_simulation::COM_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace roboy_communication_simulation

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'roboy_communication_simulation': ['/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::roboy_communication_simulation::COM_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roboy_communication_simulation::COM_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::roboy_communication_simulation::COM_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::roboy_communication_simulation::COM_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboy_communication_simulation::COM_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboy_communication_simulation::COM_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::roboy_communication_simulation::COM_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3b1b5402540d516eb0a6ed06790735e7";
  }

  static const char* value(const ::roboy_communication_simulation::COM_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3b1b5402540d516eULL;
  static const uint64_t static_value2 = 0xb0a6ed06790735e7ULL;
};

template<class ContainerAllocator>
struct DataType< ::roboy_communication_simulation::COM_<ContainerAllocator> >
{
  static const char* value()
  {
    return "roboy_communication_simulation/COM";
  }

  static const char* value(const ::roboy_communication_simulation::COM_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::roboy_communication_simulation::COM_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 roboyID\n\
geometry_msgs/Point Position\n\
geometry_msgs/Point Velocity\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
";
  }

  static const char* value(const ::roboy_communication_simulation::COM_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::roboy_communication_simulation::COM_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.roboyID);
      stream.next(m.Position);
      stream.next(m.Velocity);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct COM_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::roboy_communication_simulation::COM_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::roboy_communication_simulation::COM_<ContainerAllocator>& v)
  {
    s << indent << "roboyID: ";
    Printer<int32_t>::stream(s, indent + "  ", v.roboyID);
    s << indent << "Position: ";
    s << std::endl;
    Printer< ::geometry_msgs::Point_<ContainerAllocator> >::stream(s, indent + "  ", v.Position);
    s << indent << "Velocity: ";
    s << std::endl;
    Printer< ::geometry_msgs::Point_<ContainerAllocator> >::stream(s, indent + "  ", v.Velocity);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOY_COMMUNICATION_SIMULATION_MESSAGE_COM_H
