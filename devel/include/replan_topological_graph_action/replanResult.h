// Generated by gencpp from file replan_topological_graph_action/replanResult.msg
// DO NOT EDIT!


#ifndef REPLAN_TOPOLOGICAL_GRAPH_ACTION_MESSAGE_REPLANRESULT_H
#define REPLAN_TOPOLOGICAL_GRAPH_ACTION_MESSAGE_REPLANRESULT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace replan_topological_graph_action
{
template <class ContainerAllocator>
struct replanResult_
{
  typedef replanResult_<ContainerAllocator> Type;

  replanResult_()
    : goal()  {
      goal.assign(0.0);
  }
  replanResult_(const ContainerAllocator& _alloc)
    : goal()  {
  (void)_alloc;
      goal.assign(0.0);
  }



   typedef boost::array<double, 4>  _goal_type;
  _goal_type goal;




  typedef boost::shared_ptr< ::replan_topological_graph_action::replanResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::replan_topological_graph_action::replanResult_<ContainerAllocator> const> ConstPtr;

}; // struct replanResult_

typedef ::replan_topological_graph_action::replanResult_<std::allocator<void> > replanResult;

typedef boost::shared_ptr< ::replan_topological_graph_action::replanResult > replanResultPtr;
typedef boost::shared_ptr< ::replan_topological_graph_action::replanResult const> replanResultConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::replan_topological_graph_action::replanResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::replan_topological_graph_action::replanResult_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace replan_topological_graph_action

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'replan_topological_graph_action': ['/home/francesco/planning_ws/devel/share/replan_topological_graph_action/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::replan_topological_graph_action::replanResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::replan_topological_graph_action::replanResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::replan_topological_graph_action::replanResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::replan_topological_graph_action::replanResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::replan_topological_graph_action::replanResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::replan_topological_graph_action::replanResult_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::replan_topological_graph_action::replanResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6c0f8a43662c8b5ae9791fef095791e5";
  }

  static const char* value(const ::replan_topological_graph_action::replanResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6c0f8a43662c8b5aULL;
  static const uint64_t static_value2 = 0xe9791fef095791e5ULL;
};

template<class ContainerAllocator>
struct DataType< ::replan_topological_graph_action::replanResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "replan_topological_graph_action/replanResult";
  }

  static const char* value(const ::replan_topological_graph_action::replanResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::replan_topological_graph_action::replanResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
#result definition\n\
float64[4] goal\n\
";
  }

  static const char* value(const ::replan_topological_graph_action::replanResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::replan_topological_graph_action::replanResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.goal);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct replanResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::replan_topological_graph_action::replanResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::replan_topological_graph_action::replanResult_<ContainerAllocator>& v)
  {
    s << indent << "goal[]" << std::endl;
    for (size_t i = 0; i < v.goal.size(); ++i)
    {
      s << indent << "  goal[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.goal[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // REPLAN_TOPOLOGICAL_GRAPH_ACTION_MESSAGE_REPLANRESULT_H
