// Generated by gencpp from file location_service/Location.msg
// DO NOT EDIT!


#ifndef LOCATION_SERVICE_MESSAGE_LOCATION_H
#define LOCATION_SERVICE_MESSAGE_LOCATION_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Pose.h>
#include <sensor_msgs/LaserScan.h>

namespace location_service
{
template <class ContainerAllocator>
struct Location_
{
  typedef Location_<ContainerAllocator> Type;

  Location_()
    : name()
    , pose()
    , scan()  {
    }
  Location_(const ContainerAllocator& _alloc)
    : name(_alloc)
    , pose(_alloc)
    , scan(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _name_type;
  _name_type name;

   typedef  ::geometry_msgs::Pose_<ContainerAllocator>  _pose_type;
  _pose_type pose;

   typedef  ::sensor_msgs::LaserScan_<ContainerAllocator>  _scan_type;
  _scan_type scan;




  typedef boost::shared_ptr< ::location_service::Location_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::location_service::Location_<ContainerAllocator> const> ConstPtr;

}; // struct Location_

typedef ::location_service::Location_<std::allocator<void> > Location;

typedef boost::shared_ptr< ::location_service::Location > LocationPtr;
typedef boost::shared_ptr< ::location_service::Location const> LocationConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::location_service::Location_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::location_service::Location_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace location_service

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'location_service': ['/home/francesco/planning_ws/src/location_service/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::location_service::Location_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::location_service::Location_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::location_service::Location_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::location_service::Location_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::location_service::Location_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::location_service::Location_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::location_service::Location_<ContainerAllocator> >
{
  static const char* value()
  {
    return "650ab43b4908cf7402c2d2a9734b010e";
  }

  static const char* value(const ::location_service::Location_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x650ab43b4908cf74ULL;
  static const uint64_t static_value2 = 0x02c2d2a9734b010eULL;
};

template<class ContainerAllocator>
struct DataType< ::location_service::Location_<ContainerAllocator> >
{
  static const char* value()
  {
    return "location_service/Location";
  }

  static const char* value(const ::location_service::Location_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::location_service::Location_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string name\n\
geometry_msgs/Pose  pose\n\
sensor_msgs/LaserScan scan\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Pose\n\
# A representation of pose in free space, composed of position and orientation. \n\
Point position\n\
Quaternion orientation\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Quaternion\n\
# This represents an orientation in free space in quaternion form.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
float64 w\n\
\n\
================================================================================\n\
MSG: sensor_msgs/LaserScan\n\
# Single scan from a planar laser range-finder\n\
#\n\
# If you have another ranging device with different behavior (e.g. a sonar\n\
# array), please find or create a different message, since applications\n\
# will make fairly laser-specific assumptions about this data\n\
\n\
Header header            # timestamp in the header is the acquisition time of \n\
                         # the first ray in the scan.\n\
                         #\n\
                         # in frame frame_id, angles are measured around \n\
                         # the positive Z axis (counterclockwise, if Z is up)\n\
                         # with zero angle being forward along the x axis\n\
                         \n\
float32 angle_min        # start angle of the scan [rad]\n\
float32 angle_max        # end angle of the scan [rad]\n\
float32 angle_increment  # angular distance between measurements [rad]\n\
\n\
float32 time_increment   # time between measurements [seconds] - if your scanner\n\
                         # is moving, this will be used in interpolating position\n\
                         # of 3d points\n\
float32 scan_time        # time between scans [seconds]\n\
\n\
float32 range_min        # minimum range value [m]\n\
float32 range_max        # maximum range value [m]\n\
\n\
float32[] ranges         # range data [m] (Note: values < range_min or > range_max should be discarded)\n\
float32[] intensities    # intensity data [device-specific units].  If your\n\
                         # device does not provide intensities, please leave\n\
                         # the array empty.\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
";
  }

  static const char* value(const ::location_service::Location_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::location_service::Location_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.name);
      stream.next(m.pose);
      stream.next(m.scan);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Location_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::location_service::Location_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::location_service::Location_<ContainerAllocator>& v)
  {
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.name);
    s << indent << "pose: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose_<ContainerAllocator> >::stream(s, indent + "  ", v.pose);
    s << indent << "scan: ";
    s << std::endl;
    Printer< ::sensor_msgs::LaserScan_<ContainerAllocator> >::stream(s, indent + "  ", v.scan);
  }
};

} // namespace message_operations
} // namespace ros

#endif // LOCATION_SERVICE_MESSAGE_LOCATION_H
