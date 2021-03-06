// Generated by gencpp from file pddl_msgs/PDDLPlannerFeedback.msg
// DO NOT EDIT!


#ifndef PDDL_MSGS_MESSAGE_PDDLPLANNERFEEDBACK_H
#define PDDL_MSGS_MESSAGE_PDDLPLANNERFEEDBACK_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace pddl_msgs
{
template <class ContainerAllocator>
struct PDDLPlannerFeedback_
{
  typedef PDDLPlannerFeedback_<ContainerAllocator> Type;

  PDDLPlannerFeedback_()
    {
    }
  PDDLPlannerFeedback_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }






  typedef boost::shared_ptr< ::pddl_msgs::PDDLPlannerFeedback_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pddl_msgs::PDDLPlannerFeedback_<ContainerAllocator> const> ConstPtr;

}; // struct PDDLPlannerFeedback_

typedef ::pddl_msgs::PDDLPlannerFeedback_<std::allocator<void> > PDDLPlannerFeedback;

typedef boost::shared_ptr< ::pddl_msgs::PDDLPlannerFeedback > PDDLPlannerFeedbackPtr;
typedef boost::shared_ptr< ::pddl_msgs::PDDLPlannerFeedback const> PDDLPlannerFeedbackConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pddl_msgs::PDDLPlannerFeedback_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pddl_msgs::PDDLPlannerFeedback_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace pddl_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'pddl_msgs': ['/home/francesco/planning_ws/devel/share/pddl_msgs/msg', '/home/francesco/planning_ws/src/spqr_planning_and_reasoning/jsk_planning/pddl/pddl_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::pddl_msgs::PDDLPlannerFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pddl_msgs::PDDLPlannerFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pddl_msgs::PDDLPlannerFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pddl_msgs::PDDLPlannerFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pddl_msgs::PDDLPlannerFeedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pddl_msgs::PDDLPlannerFeedback_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pddl_msgs::PDDLPlannerFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::pddl_msgs::PDDLPlannerFeedback_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::pddl_msgs::PDDLPlannerFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pddl_msgs/PDDLPlannerFeedback";
  }

  static const char* value(const ::pddl_msgs::PDDLPlannerFeedback_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pddl_msgs::PDDLPlannerFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
#feedback\n\
\n\
";
  }

  static const char* value(const ::pddl_msgs::PDDLPlannerFeedback_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pddl_msgs::PDDLPlannerFeedback_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PDDLPlannerFeedback_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pddl_msgs::PDDLPlannerFeedback_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::pddl_msgs::PDDLPlannerFeedback_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // PDDL_MSGS_MESSAGE_PDDLPLANNERFEEDBACK_H
