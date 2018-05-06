// Generated by gencpp from file roboy_communication_middleware/MotorRecordConfig.msg
// DO NOT EDIT!


#ifndef ROBOY_COMMUNICATION_MIDDLEWARE_MESSAGE_MOTORRECORDCONFIG_H
#define ROBOY_COMMUNICATION_MIDDLEWARE_MESSAGE_MOTORRECORDCONFIG_H


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
struct MotorRecordConfig_
{
  typedef MotorRecordConfig_<ContainerAllocator> Type;

  MotorRecordConfig_()
    : ids()
    , control_mode(0)
    , samplingTime(0)
    , recordTime(0)  {
    }
  MotorRecordConfig_(const ContainerAllocator& _alloc)
    : ids(_alloc)
    , control_mode(0)
    , samplingTime(0)
    , recordTime(0)  {
  (void)_alloc;
    }



   typedef std::vector<uint8_t, typename ContainerAllocator::template rebind<uint8_t>::other >  _ids_type;
  _ids_type ids;

   typedef uint8_t _control_mode_type;
  _control_mode_type control_mode;

   typedef int32_t _samplingTime_type;
  _samplingTime_type samplingTime;

   typedef int32_t _recordTime_type;
  _recordTime_type recordTime;





  typedef boost::shared_ptr< ::roboy_communication_middleware::MotorRecordConfig_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::roboy_communication_middleware::MotorRecordConfig_<ContainerAllocator> const> ConstPtr;

}; // struct MotorRecordConfig_

typedef ::roboy_communication_middleware::MotorRecordConfig_<std::allocator<void> > MotorRecordConfig;

typedef boost::shared_ptr< ::roboy_communication_middleware::MotorRecordConfig > MotorRecordConfigPtr;
typedef boost::shared_ptr< ::roboy_communication_middleware::MotorRecordConfig const> MotorRecordConfigConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::roboy_communication_middleware::MotorRecordConfig_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::roboy_communication_middleware::MotorRecordConfig_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace roboy_communication_middleware

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'roboy_communication_middleware': ['/home/barisyazici/ss18_hand/src/roboy_communication/middleware/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::roboy_communication_middleware::MotorRecordConfig_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roboy_communication_middleware::MotorRecordConfig_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::roboy_communication_middleware::MotorRecordConfig_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::roboy_communication_middleware::MotorRecordConfig_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboy_communication_middleware::MotorRecordConfig_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboy_communication_middleware::MotorRecordConfig_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::roboy_communication_middleware::MotorRecordConfig_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4bdc623fa132fbb9601cc1d66046343b";
  }

  static const char* value(const ::roboy_communication_middleware::MotorRecordConfig_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4bdc623fa132fbb9ULL;
  static const uint64_t static_value2 = 0x601cc1d66046343bULL;
};

template<class ContainerAllocator>
struct DataType< ::roboy_communication_middleware::MotorRecordConfig_<ContainerAllocator> >
{
  static const char* value()
  {
    return "roboy_communication_middleware/MotorRecordConfig";
  }

  static const char* value(const ::roboy_communication_middleware::MotorRecordConfig_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::roboy_communication_middleware::MotorRecordConfig_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8[] ids\n\
uint8 control_mode\n\
int32 samplingTime\n\
int32 recordTime\n\
";
  }

  static const char* value(const ::roboy_communication_middleware::MotorRecordConfig_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::roboy_communication_middleware::MotorRecordConfig_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.ids);
      stream.next(m.control_mode);
      stream.next(m.samplingTime);
      stream.next(m.recordTime);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MotorRecordConfig_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::roboy_communication_middleware::MotorRecordConfig_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::roboy_communication_middleware::MotorRecordConfig_<ContainerAllocator>& v)
  {
    s << indent << "ids[]" << std::endl;
    for (size_t i = 0; i < v.ids.size(); ++i)
    {
      s << indent << "  ids[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.ids[i]);
    }
    s << indent << "control_mode: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.control_mode);
    s << indent << "samplingTime: ";
    Printer<int32_t>::stream(s, indent + "  ", v.samplingTime);
    s << indent << "recordTime: ";
    Printer<int32_t>::stream(s, indent + "  ", v.recordTime);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOY_COMMUNICATION_MIDDLEWARE_MESSAGE_MOTORRECORDCONFIG_H
