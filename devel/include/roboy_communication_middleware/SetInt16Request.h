// Generated by gencpp from file roboy_communication_middleware/SetInt16Request.msg
// DO NOT EDIT!


#ifndef ROBOY_COMMUNICATION_MIDDLEWARE_MESSAGE_SETINT16REQUEST_H
#define ROBOY_COMMUNICATION_MIDDLEWARE_MESSAGE_SETINT16REQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace roboy_communication_middleware
{
template <class ContainerAllocator>
struct SetInt16Request_
{
  typedef SetInt16Request_<ContainerAllocator> Type;

  SetInt16Request_()
    : setpoint(0)  {
    }
  SetInt16Request_(const ContainerAllocator& _alloc)
    : setpoint(0)  {
  (void)_alloc;
    }



   typedef int16_t _setpoint_type;
  _setpoint_type setpoint;





  typedef boost::shared_ptr< ::roboy_communication_middleware::SetInt16Request_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::roboy_communication_middleware::SetInt16Request_<ContainerAllocator> const> ConstPtr;

}; // struct SetInt16Request_

typedef ::roboy_communication_middleware::SetInt16Request_<std::allocator<void> > SetInt16Request;

typedef boost::shared_ptr< ::roboy_communication_middleware::SetInt16Request > SetInt16RequestPtr;
typedef boost::shared_ptr< ::roboy_communication_middleware::SetInt16Request const> SetInt16RequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::roboy_communication_middleware::SetInt16Request_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::roboy_communication_middleware::SetInt16Request_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace roboy_communication_middleware

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'roboy_communication_middleware': ['/home/barisyazici/ss18_hand/src/roboy_communication/middleware/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::roboy_communication_middleware::SetInt16Request_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roboy_communication_middleware::SetInt16Request_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::roboy_communication_middleware::SetInt16Request_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::roboy_communication_middleware::SetInt16Request_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboy_communication_middleware::SetInt16Request_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboy_communication_middleware::SetInt16Request_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::roboy_communication_middleware::SetInt16Request_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8ee399a1f7e5b4decdfc42e0ba4ab098";
  }

  static const char* value(const ::roboy_communication_middleware::SetInt16Request_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8ee399a1f7e5b4deULL;
  static const uint64_t static_value2 = 0xcdfc42e0ba4ab098ULL;
};

template<class ContainerAllocator>
struct DataType< ::roboy_communication_middleware::SetInt16Request_<ContainerAllocator> >
{
  static const char* value()
  {
    return "roboy_communication_middleware/SetInt16Request";
  }

  static const char* value(const ::roboy_communication_middleware::SetInt16Request_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::roboy_communication_middleware::SetInt16Request_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int16 setpoint\n\
";
  }

  static const char* value(const ::roboy_communication_middleware::SetInt16Request_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::roboy_communication_middleware::SetInt16Request_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.setpoint);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetInt16Request_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::roboy_communication_middleware::SetInt16Request_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::roboy_communication_middleware::SetInt16Request_<ContainerAllocator>& v)
  {
    s << indent << "setpoint: ";
    Printer<int16_t>::stream(s, indent + "  ", v.setpoint);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOY_COMMUNICATION_MIDDLEWARE_MESSAGE_SETINT16REQUEST_H
