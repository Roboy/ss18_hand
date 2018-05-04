// Generated by gencpp from file roboy_communication_middleware/EmergencyStop.msg
// DO NOT EDIT!


#ifndef ROBOY_COMMUNICATION_MIDDLEWARE_MESSAGE_EMERGENCYSTOP_H
#define ROBOY_COMMUNICATION_MIDDLEWARE_MESSAGE_EMERGENCYSTOP_H

#include <ros/service_traits.h>


#include <roboy_communication_middleware/EmergencyStopRequest.h>
#include <roboy_communication_middleware/EmergencyStopResponse.h>


namespace roboy_communication_middleware
{

struct EmergencyStop
{

typedef EmergencyStopRequest Request;
typedef EmergencyStopResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct EmergencyStop
} // namespace roboy_communication_middleware


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::roboy_communication_middleware::EmergencyStop > {
  static const char* value()
  {
    return "a9d4ee2f1bc63fdf0054100392ba922e";
  }

  static const char* value(const ::roboy_communication_middleware::EmergencyStop&) { return value(); }
};

template<>
struct DataType< ::roboy_communication_middleware::EmergencyStop > {
  static const char* value()
  {
    return "roboy_communication_middleware/EmergencyStop";
  }

  static const char* value(const ::roboy_communication_middleware::EmergencyStop&) { return value(); }
};


// service_traits::MD5Sum< ::roboy_communication_middleware::EmergencyStopRequest> should match 
// service_traits::MD5Sum< ::roboy_communication_middleware::EmergencyStop > 
template<>
struct MD5Sum< ::roboy_communication_middleware::EmergencyStopRequest>
{
  static const char* value()
  {
    return MD5Sum< ::roboy_communication_middleware::EmergencyStop >::value();
  }
  static const char* value(const ::roboy_communication_middleware::EmergencyStopRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::roboy_communication_middleware::EmergencyStopRequest> should match 
// service_traits::DataType< ::roboy_communication_middleware::EmergencyStop > 
template<>
struct DataType< ::roboy_communication_middleware::EmergencyStopRequest>
{
  static const char* value()
  {
    return DataType< ::roboy_communication_middleware::EmergencyStop >::value();
  }
  static const char* value(const ::roboy_communication_middleware::EmergencyStopRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::roboy_communication_middleware::EmergencyStopResponse> should match 
// service_traits::MD5Sum< ::roboy_communication_middleware::EmergencyStop > 
template<>
struct MD5Sum< ::roboy_communication_middleware::EmergencyStopResponse>
{
  static const char* value()
  {
    return MD5Sum< ::roboy_communication_middleware::EmergencyStop >::value();
  }
  static const char* value(const ::roboy_communication_middleware::EmergencyStopResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::roboy_communication_middleware::EmergencyStopResponse> should match 
// service_traits::DataType< ::roboy_communication_middleware::EmergencyStop > 
template<>
struct DataType< ::roboy_communication_middleware::EmergencyStopResponse>
{
  static const char* value()
  {
    return DataType< ::roboy_communication_middleware::EmergencyStop >::value();
  }
  static const char* value(const ::roboy_communication_middleware::EmergencyStopResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROBOY_COMMUNICATION_MIDDLEWARE_MESSAGE_EMERGENCYSTOP_H
