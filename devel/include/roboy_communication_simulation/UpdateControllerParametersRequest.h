// Generated by gencpp from file roboy_communication_simulation/UpdateControllerParametersRequest.msg
// DO NOT EDIT!


#ifndef ROBOY_COMMUNICATION_SIMULATION_MESSAGE_UPDATECONTROLLERPARAMETERSREQUEST_H
#define ROBOY_COMMUNICATION_SIMULATION_MESSAGE_UPDATECONTROLLERPARAMETERSREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <roboy_communication_simulation/ControllerParameters.h>

namespace roboy_communication_simulation
{
template <class ContainerAllocator>
struct UpdateControllerParametersRequest_
{
  typedef UpdateControllerParametersRequest_<ContainerAllocator> Type;

  UpdateControllerParametersRequest_()
    : params()  {
    }
  UpdateControllerParametersRequest_(const ContainerAllocator& _alloc)
    : params(_alloc)  {
  (void)_alloc;
    }



   typedef  ::roboy_communication_simulation::ControllerParameters_<ContainerAllocator>  _params_type;
  _params_type params;





  typedef boost::shared_ptr< ::roboy_communication_simulation::UpdateControllerParametersRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::roboy_communication_simulation::UpdateControllerParametersRequest_<ContainerAllocator> const> ConstPtr;

}; // struct UpdateControllerParametersRequest_

typedef ::roboy_communication_simulation::UpdateControllerParametersRequest_<std::allocator<void> > UpdateControllerParametersRequest;

typedef boost::shared_ptr< ::roboy_communication_simulation::UpdateControllerParametersRequest > UpdateControllerParametersRequestPtr;
typedef boost::shared_ptr< ::roboy_communication_simulation::UpdateControllerParametersRequest const> UpdateControllerParametersRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::roboy_communication_simulation::UpdateControllerParametersRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::roboy_communication_simulation::UpdateControllerParametersRequest_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::roboy_communication_simulation::UpdateControllerParametersRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roboy_communication_simulation::UpdateControllerParametersRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::roboy_communication_simulation::UpdateControllerParametersRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::roboy_communication_simulation::UpdateControllerParametersRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboy_communication_simulation::UpdateControllerParametersRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboy_communication_simulation::UpdateControllerParametersRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::roboy_communication_simulation::UpdateControllerParametersRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e4fd67049f61290f75902a321cc68078";
  }

  static const char* value(const ::roboy_communication_simulation::UpdateControllerParametersRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe4fd67049f61290fULL;
  static const uint64_t static_value2 = 0x75902a321cc68078ULL;
};

template<class ContainerAllocator>
struct DataType< ::roboy_communication_simulation::UpdateControllerParametersRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "roboy_communication_simulation/UpdateControllerParametersRequest";
  }

  static const char* value(const ::roboy_communication_simulation::UpdateControllerParametersRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::roboy_communication_simulation::UpdateControllerParametersRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "roboy_communication_simulation/ControllerParameters params\n\
\n\
================================================================================\n\
MSG: roboy_communication_simulation/ControllerParameters\n\
int32 roboyID\n\
float64 F_contact\n\
float64 d_lift\n\
float64 d_prep\n\
float64 F_max\n\
float64 psi_heading\n\
float64 omega_heading\n\
float64 v_forward\n\
float64 v_COM\n\
float64 k_v\n\
float64 k_h\n\
float64[] k_p_theta_left\n\
float64[] k_p_theta_right\n\
float64[] k_d_theta_left\n\
float64[] k_d_theta_right\n\
float64[] k_p_phi\n\
float64[] k_d_phi\n\
float64 k_V\n\
float64 k_P\n\
float64 k_Q\n\
float64 k_omega\n\
float64 k_M_Fplus\n\
float64 c_hip_lift\n\
float64 c_knee_lift\n\
float64 c_stance_lift\n\
float64 c_swing_prep\n\
float64[] theta_groin_0\n\
float64[] phi_groin_0\n\
float64 theta_trunk_0\n\
float64 phi_trunk_0\n\
float64[] theta_knee\n\
float64[] theta_ankle\n\
float64[] d_s\n\
float64[] d_c\n\
float64[] v_s\n\
float64[] v_c\n\
float32 sim_time\n\
";
  }

  static const char* value(const ::roboy_communication_simulation::UpdateControllerParametersRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::roboy_communication_simulation::UpdateControllerParametersRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.params);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct UpdateControllerParametersRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::roboy_communication_simulation::UpdateControllerParametersRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::roboy_communication_simulation::UpdateControllerParametersRequest_<ContainerAllocator>& v)
  {
    s << indent << "params: ";
    s << std::endl;
    Printer< ::roboy_communication_simulation::ControllerParameters_<ContainerAllocator> >::stream(s, indent + "  ", v.params);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOY_COMMUNICATION_SIMULATION_MESSAGE_UPDATECONTROLLERPARAMETERSREQUEST_H
