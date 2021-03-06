// Generated by gencpp from file master_plan_action/masterGoal.msg
// DO NOT EDIT!


#ifndef MASTER_PLAN_ACTION_MESSAGE_MASTERGOAL_H
#define MASTER_PLAN_ACTION_MESSAGE_MASTERGOAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace master_plan_action
{
template <class ContainerAllocator>
struct masterGoal_
{
  typedef masterGoal_<ContainerAllocator> Type;

  masterGoal_()
    : goal(0.0)  {
    }
  masterGoal_(const ContainerAllocator& _alloc)
    : goal(0.0)  {
  (void)_alloc;
    }



   typedef double _goal_type;
  _goal_type goal;




  typedef boost::shared_ptr< ::master_plan_action::masterGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::master_plan_action::masterGoal_<ContainerAllocator> const> ConstPtr;

}; // struct masterGoal_

typedef ::master_plan_action::masterGoal_<std::allocator<void> > masterGoal;

typedef boost::shared_ptr< ::master_plan_action::masterGoal > masterGoalPtr;
typedef boost::shared_ptr< ::master_plan_action::masterGoal const> masterGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::master_plan_action::masterGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::master_plan_action::masterGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace master_plan_action

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'master_plan_action': ['/home/francesco/planning_ws/devel/share/master_plan_action/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::master_plan_action::masterGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::master_plan_action::masterGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::master_plan_action::masterGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::master_plan_action::masterGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::master_plan_action::masterGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::master_plan_action::masterGoal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::master_plan_action::masterGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "96f1fc969cebfe9056357b5db1aa501e";
  }

  static const char* value(const ::master_plan_action::masterGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x96f1fc969cebfe90ULL;
  static const uint64_t static_value2 = 0x56357b5db1aa501eULL;
};

template<class ContainerAllocator>
struct DataType< ::master_plan_action::masterGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "master_plan_action/masterGoal";
  }

  static const char* value(const ::master_plan_action::masterGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::master_plan_action::masterGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
#goal definition\n\
float64 goal\n\
";
  }

  static const char* value(const ::master_plan_action::masterGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::master_plan_action::masterGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.goal);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct masterGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::master_plan_action::masterGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::master_plan_action::masterGoal_<ContainerAllocator>& v)
  {
    s << indent << "goal: ";
    Printer<double>::stream(s, indent + "  ", v.goal);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MASTER_PLAN_ACTION_MESSAGE_MASTERGOAL_H
