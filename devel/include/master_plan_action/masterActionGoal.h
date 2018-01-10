// Generated by gencpp from file master_plan_action/masterActionGoal.msg
// DO NOT EDIT!


#ifndef MASTER_PLAN_ACTION_MESSAGE_MASTERACTIONGOAL_H
#define MASTER_PLAN_ACTION_MESSAGE_MASTERACTIONGOAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <actionlib_msgs/GoalID.h>
#include <master_plan_action/masterGoal.h>

namespace master_plan_action
{
template <class ContainerAllocator>
struct masterActionGoal_
{
  typedef masterActionGoal_<ContainerAllocator> Type;

  masterActionGoal_()
    : header()
    , goal_id()
    , goal()  {
    }
  masterActionGoal_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , goal_id(_alloc)
    , goal(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::actionlib_msgs::GoalID_<ContainerAllocator>  _goal_id_type;
  _goal_id_type goal_id;

   typedef  ::master_plan_action::masterGoal_<ContainerAllocator>  _goal_type;
  _goal_type goal;




  typedef boost::shared_ptr< ::master_plan_action::masterActionGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::master_plan_action::masterActionGoal_<ContainerAllocator> const> ConstPtr;

}; // struct masterActionGoal_

typedef ::master_plan_action::masterActionGoal_<std::allocator<void> > masterActionGoal;

typedef boost::shared_ptr< ::master_plan_action::masterActionGoal > masterActionGoalPtr;
typedef boost::shared_ptr< ::master_plan_action::masterActionGoal const> masterActionGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::master_plan_action::masterActionGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::master_plan_action::masterActionGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace master_plan_action

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'master_plan_action': ['/home/francesco/planning_ws/devel/share/master_plan_action/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::master_plan_action::masterActionGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::master_plan_action::masterActionGoal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::master_plan_action::masterActionGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::master_plan_action::masterActionGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::master_plan_action::masterActionGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::master_plan_action::masterActionGoal_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::master_plan_action::masterActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bc4835af6cee27c3d573a8dc3c4d5846";
  }

  static const char* value(const ::master_plan_action::masterActionGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xbc4835af6cee27c3ULL;
  static const uint64_t static_value2 = 0xd573a8dc3c4d5846ULL;
};

template<class ContainerAllocator>
struct DataType< ::master_plan_action::masterActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "master_plan_action/masterActionGoal";
  }

  static const char* value(const ::master_plan_action::masterActionGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::master_plan_action::masterActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
\n\
Header header\n\
actionlib_msgs/GoalID goal_id\n\
masterGoal goal\n\
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
\n\
================================================================================\n\
MSG: actionlib_msgs/GoalID\n\
# The stamp should store the time at which this goal was requested.\n\
# It is used by an action server when it tries to preempt all\n\
# goals that were requested before a certain time\n\
time stamp\n\
\n\
# The id provides a way to associate feedback and\n\
# result message with specific goal requests. The id\n\
# specified must be unique.\n\
string id\n\
\n\
\n\
================================================================================\n\
MSG: master_plan_action/masterGoal\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
#goal definition\n\
float64 goal\n\
";
  }

  static const char* value(const ::master_plan_action::masterActionGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::master_plan_action::masterActionGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.goal_id);
      stream.next(m.goal);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct masterActionGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::master_plan_action::masterActionGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::master_plan_action::masterActionGoal_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "goal_id: ";
    s << std::endl;
    Printer< ::actionlib_msgs::GoalID_<ContainerAllocator> >::stream(s, indent + "  ", v.goal_id);
    s << indent << "goal: ";
    s << std::endl;
    Printer< ::master_plan_action::masterGoal_<ContainerAllocator> >::stream(s, indent + "  ", v.goal);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MASTER_PLAN_ACTION_MESSAGE_MASTERACTIONGOAL_H