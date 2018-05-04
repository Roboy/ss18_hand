// Generated by gencpp from file roboy_communication_middleware/MotorCalibrationServiceRequest.msg
// DO NOT EDIT!


#ifndef ROBOY_COMMUNICATION_MIDDLEWARE_MESSAGE_MOTORCALIBRATIONSERVICEREQUEST_H
#define ROBOY_COMMUNICATION_MIDDLEWARE_MESSAGE_MOTORCALIBRATIONSERVICEREQUEST_H


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
struct MotorCalibrationServiceRequest_
{
  typedef MotorCalibrationServiceRequest_<ContainerAllocator> Type;

  MotorCalibrationServiceRequest_()
    : fpga(0)
    , motor(0)
    , degree(0)
    , timeout(0)
    , numberOfDataPoints(0)
    , displacement_min(0)
    , displacement_max(0)  {
    }
  MotorCalibrationServiceRequest_(const ContainerAllocator& _alloc)
    : fpga(0)
    , motor(0)
    , degree(0)
    , timeout(0)
    , numberOfDataPoints(0)
    , displacement_min(0)
    , displacement_max(0)  {
  (void)_alloc;
    }



   typedef int32_t _fpga_type;
  _fpga_type fpga;

   typedef int32_t _motor_type;
  _motor_type motor;

   typedef int32_t _degree_type;
  _degree_type degree;

   typedef int32_t _timeout_type;
  _timeout_type timeout;

   typedef int32_t _numberOfDataPoints_type;
  _numberOfDataPoints_type numberOfDataPoints;

   typedef int32_t _displacement_min_type;
  _displacement_min_type displacement_min;

   typedef int32_t _displacement_max_type;
  _displacement_max_type displacement_max;





  typedef boost::shared_ptr< ::roboy_communication_middleware::MotorCalibrationServiceRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::roboy_communication_middleware::MotorCalibrationServiceRequest_<ContainerAllocator> const> ConstPtr;

}; // struct MotorCalibrationServiceRequest_

typedef ::roboy_communication_middleware::MotorCalibrationServiceRequest_<std::allocator<void> > MotorCalibrationServiceRequest;

typedef boost::shared_ptr< ::roboy_communication_middleware::MotorCalibrationServiceRequest > MotorCalibrationServiceRequestPtr;
typedef boost::shared_ptr< ::roboy_communication_middleware::MotorCalibrationServiceRequest const> MotorCalibrationServiceRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::roboy_communication_middleware::MotorCalibrationServiceRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::roboy_communication_middleware::MotorCalibrationServiceRequest_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::roboy_communication_middleware::MotorCalibrationServiceRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roboy_communication_middleware::MotorCalibrationServiceRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::roboy_communication_middleware::MotorCalibrationServiceRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::roboy_communication_middleware::MotorCalibrationServiceRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboy_communication_middleware::MotorCalibrationServiceRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboy_communication_middleware::MotorCalibrationServiceRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::roboy_communication_middleware::MotorCalibrationServiceRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9f4930777a486870f541f84373cd36ea";
  }

  static const char* value(const ::roboy_communication_middleware::MotorCalibrationServiceRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9f4930777a486870ULL;
  static const uint64_t static_value2 = 0xf541f84373cd36eaULL;
};

template<class ContainerAllocator>
struct DataType< ::roboy_communication_middleware::MotorCalibrationServiceRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "roboy_communication_middleware/MotorCalibrationServiceRequest";
  }

  static const char* value(const ::roboy_communication_middleware::MotorCalibrationServiceRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::roboy_communication_middleware::MotorCalibrationServiceRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 fpga\n\
int32 motor\n\
int32 degree\n\
int32 timeout\n\
int32 numberOfDataPoints\n\
int32 displacement_min\n\
int32 displacement_max\n\
";
  }

  static const char* value(const ::roboy_communication_middleware::MotorCalibrationServiceRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::roboy_communication_middleware::MotorCalibrationServiceRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.fpga);
      stream.next(m.motor);
      stream.next(m.degree);
      stream.next(m.timeout);
      stream.next(m.numberOfDataPoints);
      stream.next(m.displacement_min);
      stream.next(m.displacement_max);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MotorCalibrationServiceRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::roboy_communication_middleware::MotorCalibrationServiceRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::roboy_communication_middleware::MotorCalibrationServiceRequest_<ContainerAllocator>& v)
  {
    s << indent << "fpga: ";
    Printer<int32_t>::stream(s, indent + "  ", v.fpga);
    s << indent << "motor: ";
    Printer<int32_t>::stream(s, indent + "  ", v.motor);
    s << indent << "degree: ";
    Printer<int32_t>::stream(s, indent + "  ", v.degree);
    s << indent << "timeout: ";
    Printer<int32_t>::stream(s, indent + "  ", v.timeout);
    s << indent << "numberOfDataPoints: ";
    Printer<int32_t>::stream(s, indent + "  ", v.numberOfDataPoints);
    s << indent << "displacement_min: ";
    Printer<int32_t>::stream(s, indent + "  ", v.displacement_min);
    s << indent << "displacement_max: ";
    Printer<int32_t>::stream(s, indent + "  ", v.displacement_max);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOY_COMMUNICATION_MIDDLEWARE_MESSAGE_MOTORCALIBRATIONSERVICEREQUEST_H
