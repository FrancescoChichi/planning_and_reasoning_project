// Generated by gencpp from file pddl_msgs/PDDLActionArray.msg
// DO NOT EDIT!


#ifndef PDDL_MSGS_MESSAGE_PDDLACTIONARRAY_H
#define PDDL_MSGS_MESSAGE_PDDLACTIONARRAY_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <pddl_msgs/PDDLAction.h>

namespace pddl_msgs
{
template <class ContainerAllocator>
struct PDDLActionArray_
{
  typedef PDDLActionArray_<ContainerAllocator> Type;

  PDDLActionArray_()
    : actions()  {
    }
  PDDLActionArray_(const ContainerAllocator& _alloc)
    : actions(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::pddl_msgs::PDDLAction_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::pddl_msgs::PDDLAction_<ContainerAllocator> >::other >  _actions_type;
  _actions_type actions;




  typedef boost::shared_ptr< ::pddl_msgs::PDDLActionArray_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pddl_msgs::PDDLActionArray_<ContainerAllocator> const> ConstPtr;

}; // struct PDDLActionArray_

typedef ::pddl_msgs::PDDLActionArray_<std::allocator<void> > PDDLActionArray;

typedef boost::shared_ptr< ::pddl_msgs::PDDLActionArray > PDDLActionArrayPtr;
typedef boost::shared_ptr< ::pddl_msgs::PDDLActionArray const> PDDLActionArrayConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pddl_msgs::PDDLActionArray_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pddl_msgs::PDDLActionArray_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace pddl_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'pddl_msgs': ['/home/francesco/planning_ws/devel/share/pddl_msgs/msg', '/home/francesco/planning_ws/src/spqr_planning_and_reasoning/jsk_planning/pddl/pddl_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::pddl_msgs::PDDLActionArray_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pddl_msgs::PDDLActionArray_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pddl_msgs::PDDLActionArray_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pddl_msgs::PDDLActionArray_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pddl_msgs::PDDLActionArray_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pddl_msgs::PDDLActionArray_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pddl_msgs::PDDLActionArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e99b1b4c780bc71e4f0a0e590a6217ed";
  }

  static const char* value(const ::pddl_msgs::PDDLActionArray_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe99b1b4c780bc71eULL;
  static const uint64_t static_value2 = 0x4f0a0e590a6217edULL;
};

template<class ContainerAllocator>
struct DataType< ::pddl_msgs::PDDLActionArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pddl_msgs/PDDLActionArray";
  }

  static const char* value(const ::pddl_msgs::PDDLActionArray_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pddl_msgs::PDDLActionArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pddl_msgs/PDDLAction[] actions\n\
\n\
================================================================================\n\
MSG: pddl_msgs/PDDLAction\n\
string name\n\
# write String in S expression like \"(and foo var)\"\n\
string parameters\n\
string precondition\n\
string effect\n\
string on_condition\n\
# we can't use duration name\n\
string action_duration\n\
";
  }

  static const char* value(const ::pddl_msgs::PDDLActionArray_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pddl_msgs::PDDLActionArray_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.actions);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PDDLActionArray_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pddl_msgs::PDDLActionArray_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pddl_msgs::PDDLActionArray_<ContainerAllocator>& v)
  {
    s << indent << "actions[]" << std::endl;
    for (size_t i = 0; i < v.actions.size(); ++i)
    {
      s << indent << "  actions[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::pddl_msgs::PDDLAction_<ContainerAllocator> >::stream(s, indent + "    ", v.actions[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // PDDL_MSGS_MESSAGE_PDDLACTIONARRAY_H
