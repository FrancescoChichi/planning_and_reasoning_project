// Generated by gencpp from file location_service/GetLocation.msg
// DO NOT EDIT!


#ifndef LOCATION_SERVICE_MESSAGE_GETLOCATION_H
#define LOCATION_SERVICE_MESSAGE_GETLOCATION_H

#include <ros/service_traits.h>


#include <location_service/GetLocationRequest.h>
#include <location_service/GetLocationResponse.h>


namespace location_service
{

struct GetLocation
{

typedef GetLocationRequest Request;
typedef GetLocationResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GetLocation
} // namespace location_service


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::location_service::GetLocation > {
  static const char* value()
  {
    return "7df2426657da0f35bd560cd31d7ab56d";
  }

  static const char* value(const ::location_service::GetLocation&) { return value(); }
};

template<>
struct DataType< ::location_service::GetLocation > {
  static const char* value()
  {
    return "location_service/GetLocation";
  }

  static const char* value(const ::location_service::GetLocation&) { return value(); }
};


// service_traits::MD5Sum< ::location_service::GetLocationRequest> should match 
// service_traits::MD5Sum< ::location_service::GetLocation > 
template<>
struct MD5Sum< ::location_service::GetLocationRequest>
{
  static const char* value()
  {
    return MD5Sum< ::location_service::GetLocation >::value();
  }
  static const char* value(const ::location_service::GetLocationRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::location_service::GetLocationRequest> should match 
// service_traits::DataType< ::location_service::GetLocation > 
template<>
struct DataType< ::location_service::GetLocationRequest>
{
  static const char* value()
  {
    return DataType< ::location_service::GetLocation >::value();
  }
  static const char* value(const ::location_service::GetLocationRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::location_service::GetLocationResponse> should match 
// service_traits::MD5Sum< ::location_service::GetLocation > 
template<>
struct MD5Sum< ::location_service::GetLocationResponse>
{
  static const char* value()
  {
    return MD5Sum< ::location_service::GetLocation >::value();
  }
  static const char* value(const ::location_service::GetLocationResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::location_service::GetLocationResponse> should match 
// service_traits::DataType< ::location_service::GetLocation > 
template<>
struct DataType< ::location_service::GetLocationResponse>
{
  static const char* value()
  {
    return DataType< ::location_service::GetLocation >::value();
  }
  static const char* value(const ::location_service::GetLocationResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // LOCATION_SERVICE_MESSAGE_GETLOCATION_H
