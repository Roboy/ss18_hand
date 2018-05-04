// Generated by gencpp from file roboy_communication_cognition/CallQuery.msg
// DO NOT EDIT!


#ifndef ROBOY_COMMUNICATION_COGNITION_MESSAGE_CALLQUERY_H
#define ROBOY_COMMUNICATION_COGNITION_MESSAGE_CALLQUERY_H

#include <ros/service_traits.h>


#include <roboy_communication_cognition/CallQueryRequest.h>
#include <roboy_communication_cognition/CallQueryResponse.h>


namespace roboy_communication_cognition
{

struct CallQuery
{

typedef CallQueryRequest Request;
typedef CallQueryResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct CallQuery
} // namespace roboy_communication_cognition


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::roboy_communication_cognition::CallQuery > {
  static const char* value()
  {
    return "5404d412a67bedecd70067ff4e66aff8";
  }

  static const char* value(const ::roboy_communication_cognition::CallQuery&) { return value(); }
};

template<>
struct DataType< ::roboy_communication_cognition::CallQuery > {
  static const char* value()
  {
    return "roboy_communication_cognition/CallQuery";
  }

  static const char* value(const ::roboy_communication_cognition::CallQuery&) { return value(); }
};


// service_traits::MD5Sum< ::roboy_communication_cognition::CallQueryRequest> should match 
// service_traits::MD5Sum< ::roboy_communication_cognition::CallQuery > 
template<>
struct MD5Sum< ::roboy_communication_cognition::CallQueryRequest>
{
  static const char* value()
  {
    return MD5Sum< ::roboy_communication_cognition::CallQuery >::value();
  }
  static const char* value(const ::roboy_communication_cognition::CallQueryRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::roboy_communication_cognition::CallQueryRequest> should match 
// service_traits::DataType< ::roboy_communication_cognition::CallQuery > 
template<>
struct DataType< ::roboy_communication_cognition::CallQueryRequest>
{
  static const char* value()
  {
    return DataType< ::roboy_communication_cognition::CallQuery >::value();
  }
  static const char* value(const ::roboy_communication_cognition::CallQueryRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::roboy_communication_cognition::CallQueryResponse> should match 
// service_traits::MD5Sum< ::roboy_communication_cognition::CallQuery > 
template<>
struct MD5Sum< ::roboy_communication_cognition::CallQueryResponse>
{
  static const char* value()
  {
    return MD5Sum< ::roboy_communication_cognition::CallQuery >::value();
  }
  static const char* value(const ::roboy_communication_cognition::CallQueryResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::roboy_communication_cognition::CallQueryResponse> should match 
// service_traits::DataType< ::roboy_communication_cognition::CallQuery > 
template<>
struct DataType< ::roboy_communication_cognition::CallQueryResponse>
{
  static const char* value()
  {
    return DataType< ::roboy_communication_cognition::CallQuery >::value();
  }
  static const char* value(const ::roboy_communication_cognition::CallQueryResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROBOY_COMMUNICATION_COGNITION_MESSAGE_CALLQUERY_H
