// Generated by gencpp from file roboy_communication_middleware/MotorCalibrationService.msg
// DO NOT EDIT!


#ifndef ROBOY_COMMUNICATION_MIDDLEWARE_MESSAGE_MOTORCALIBRATIONSERVICE_H
#define ROBOY_COMMUNICATION_MIDDLEWARE_MESSAGE_MOTORCALIBRATIONSERVICE_H

#include <ros/service_traits.h>


#include <roboy_communication_middleware/MotorCalibrationServiceRequest.h>
#include <roboy_communication_middleware/MotorCalibrationServiceResponse.h>


namespace roboy_communication_middleware
{

struct MotorCalibrationService
{

typedef MotorCalibrationServiceRequest Request;
typedef MotorCalibrationServiceResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct MotorCalibrationService
} // namespace roboy_communication_middleware


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::roboy_communication_middleware::MotorCalibrationService > {
  static const char* value()
  {
    return "78e9593b5280af42e349c156e06528a2";
  }

  static const char* value(const ::roboy_communication_middleware::MotorCalibrationService&) { return value(); }
};

template<>
struct DataType< ::roboy_communication_middleware::MotorCalibrationService > {
  static const char* value()
  {
    return "roboy_communication_middleware/MotorCalibrationService";
  }

  static const char* value(const ::roboy_communication_middleware::MotorCalibrationService&) { return value(); }
};


// service_traits::MD5Sum< ::roboy_communication_middleware::MotorCalibrationServiceRequest> should match 
// service_traits::MD5Sum< ::roboy_communication_middleware::MotorCalibrationService > 
template<>
struct MD5Sum< ::roboy_communication_middleware::MotorCalibrationServiceRequest>
{
  static const char* value()
  {
    return MD5Sum< ::roboy_communication_middleware::MotorCalibrationService >::value();
  }
  static const char* value(const ::roboy_communication_middleware::MotorCalibrationServiceRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::roboy_communication_middleware::MotorCalibrationServiceRequest> should match 
// service_traits::DataType< ::roboy_communication_middleware::MotorCalibrationService > 
template<>
struct DataType< ::roboy_communication_middleware::MotorCalibrationServiceRequest>
{
  static const char* value()
  {
    return DataType< ::roboy_communication_middleware::MotorCalibrationService >::value();
  }
  static const char* value(const ::roboy_communication_middleware::MotorCalibrationServiceRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::roboy_communication_middleware::MotorCalibrationServiceResponse> should match 
// service_traits::MD5Sum< ::roboy_communication_middleware::MotorCalibrationService > 
template<>
struct MD5Sum< ::roboy_communication_middleware::MotorCalibrationServiceResponse>
{
  static const char* value()
  {
    return MD5Sum< ::roboy_communication_middleware::MotorCalibrationService >::value();
  }
  static const char* value(const ::roboy_communication_middleware::MotorCalibrationServiceResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::roboy_communication_middleware::MotorCalibrationServiceResponse> should match 
// service_traits::DataType< ::roboy_communication_middleware::MotorCalibrationService > 
template<>
struct DataType< ::roboy_communication_middleware::MotorCalibrationServiceResponse>
{
  static const char* value()
  {
    return DataType< ::roboy_communication_middleware::MotorCalibrationService >::value();
  }
  static const char* value(const ::roboy_communication_middleware::MotorCalibrationServiceResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROBOY_COMMUNICATION_MIDDLEWARE_MESSAGE_MOTORCALIBRATIONSERVICE_H
