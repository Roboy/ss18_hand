// Generated by gencpp from file roboy_communication_cognition/RecognizeObjectRequest.msg
// DO NOT EDIT!


#ifndef ROBOY_COMMUNICATION_COGNITION_MESSAGE_RECOGNIZEOBJECTREQUEST_H
#define ROBOY_COMMUNICATION_COGNITION_MESSAGE_RECOGNIZEOBJECTREQUEST_H


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
struct RecognizeObjectRequest_
{
  typedef RecognizeObjectRequest_<ContainerAllocator> Type;

  RecognizeObjectRequest_()
    : object_id(0)  {
    }
  RecognizeObjectRequest_(const ContainerAllocator& _alloc)
    : object_id(0)  {
  (void)_alloc;
    }



   typedef uint32_t _object_id_type;
  _object_id_type object_id;





  typedef boost::shared_ptr< ::roboy_communication_cognition::RecognizeObjectRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::roboy_communication_cognition::RecognizeObjectRequest_<ContainerAllocator> const> ConstPtr;

}; // struct RecognizeObjectRequest_

typedef ::roboy_communication_cognition::RecognizeObjectRequest_<std::allocator<void> > RecognizeObjectRequest;

typedef boost::shared_ptr< ::roboy_communication_cognition::RecognizeObjectRequest > RecognizeObjectRequestPtr;
typedef boost::shared_ptr< ::roboy_communication_cognition::RecognizeObjectRequest const> RecognizeObjectRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::roboy_communication_cognition::RecognizeObjectRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::roboy_communication_cognition::RecognizeObjectRequest_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::roboy_communication_cognition::RecognizeObjectRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roboy_communication_cognition::RecognizeObjectRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::roboy_communication_cognition::RecognizeObjectRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::roboy_communication_cognition::RecognizeObjectRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboy_communication_cognition::RecognizeObjectRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboy_communication_cognition::RecognizeObjectRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::roboy_communication_cognition::RecognizeObjectRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3bc61e324c1dd4520ddb0edb73571599";
  }

  static const char* value(const ::roboy_communication_cognition::RecognizeObjectRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3bc61e324c1dd452ULL;
  static const uint64_t static_value2 = 0x0ddb0edb73571599ULL;
};

template<class ContainerAllocator>
struct DataType< ::roboy_communication_cognition::RecognizeObjectRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "roboy_communication_cognition/RecognizeObjectRequest";
  }

  static const char* value(const ::roboy_communication_cognition::RecognizeObjectRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::roboy_communication_cognition::RecognizeObjectRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint32 object_id\n\
";
  }

  static const char* value(const ::roboy_communication_cognition::RecognizeObjectRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::roboy_communication_cognition::RecognizeObjectRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.object_id);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RecognizeObjectRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::roboy_communication_cognition::RecognizeObjectRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::roboy_communication_cognition::RecognizeObjectRequest_<ContainerAllocator>& v)
  {
    s << indent << "object_id: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.object_id);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOY_COMMUNICATION_COGNITION_MESSAGE_RECOGNIZEOBJECTREQUEST_H
