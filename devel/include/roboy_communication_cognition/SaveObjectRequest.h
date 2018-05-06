// Generated by gencpp from file roboy_communication_cognition/SaveObjectRequest.msg
// DO NOT EDIT!


#ifndef ROBOY_COMMUNICATION_COGNITION_MESSAGE_SAVEOBJECTREQUEST_H
#define ROBOY_COMMUNICATION_COGNITION_MESSAGE_SAVEOBJECTREQUEST_H


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
struct SaveObjectRequest_
{
  typedef SaveObjectRequest_<ContainerAllocator> Type;

  SaveObjectRequest_()
    : class_name()
    , id(0)
    , properties()
    , values()  {
    }
  SaveObjectRequest_(const ContainerAllocator& _alloc)
    : class_name(_alloc)
    , id(0)
    , properties(_alloc)
    , values(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _class_name_type;
  _class_name_type class_name;

   typedef int32_t _id_type;
  _id_type id;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _properties_type;
  _properties_type properties;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _values_type;
  _values_type values;





  typedef boost::shared_ptr< ::roboy_communication_cognition::SaveObjectRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::roboy_communication_cognition::SaveObjectRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SaveObjectRequest_

typedef ::roboy_communication_cognition::SaveObjectRequest_<std::allocator<void> > SaveObjectRequest;

typedef boost::shared_ptr< ::roboy_communication_cognition::SaveObjectRequest > SaveObjectRequestPtr;
typedef boost::shared_ptr< ::roboy_communication_cognition::SaveObjectRequest const> SaveObjectRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::roboy_communication_cognition::SaveObjectRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::roboy_communication_cognition::SaveObjectRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace roboy_communication_cognition

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'roboy_communication_cognition': ['/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::roboy_communication_cognition::SaveObjectRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roboy_communication_cognition::SaveObjectRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::roboy_communication_cognition::SaveObjectRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::roboy_communication_cognition::SaveObjectRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboy_communication_cognition::SaveObjectRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboy_communication_cognition::SaveObjectRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::roboy_communication_cognition::SaveObjectRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "77239618c14c655906c86a89b54aca70";
  }

  static const char* value(const ::roboy_communication_cognition::SaveObjectRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x77239618c14c6559ULL;
  static const uint64_t static_value2 = 0x06c86a89b54aca70ULL;
};

template<class ContainerAllocator>
struct DataType< ::roboy_communication_cognition::SaveObjectRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "roboy_communication_cognition/SaveObjectRequest";
  }

  static const char* value(const ::roboy_communication_cognition::SaveObjectRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::roboy_communication_cognition::SaveObjectRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string class_name\n\
int32 id\n\
string properties\n\
string values\n\
";
  }

  static const char* value(const ::roboy_communication_cognition::SaveObjectRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::roboy_communication_cognition::SaveObjectRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.class_name);
      stream.next(m.id);
      stream.next(m.properties);
      stream.next(m.values);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SaveObjectRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::roboy_communication_cognition::SaveObjectRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::roboy_communication_cognition::SaveObjectRequest_<ContainerAllocator>& v)
  {
    s << indent << "class_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.class_name);
    s << indent << "id: ";
    Printer<int32_t>::stream(s, indent + "  ", v.id);
    s << indent << "properties: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.properties);
    s << indent << "values: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.values);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOY_COMMUNICATION_COGNITION_MESSAGE_SAVEOBJECTREQUEST_H
