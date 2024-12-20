// Generated by gencpp from file paquete_practica1/FloatPose.msg
// DO NOT EDIT!


#ifndef PAQUETE_PRACTICA1_MESSAGE_FLOATPOSE_H
#define PAQUETE_PRACTICA1_MESSAGE_FLOATPOSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Pose.h>
#include <std_msgs/Float32.h>

namespace paquete_practica1
{
template <class ContainerAllocator>
struct FloatPose_
{
  typedef FloatPose_<ContainerAllocator> Type;

  FloatPose_()
    : pose()
    , value()  {
    }
  FloatPose_(const ContainerAllocator& _alloc)
    : pose(_alloc)
    , value(_alloc)  {
  (void)_alloc;
    }



   typedef  ::geometry_msgs::Pose_<ContainerAllocator>  _pose_type;
  _pose_type pose;

   typedef  ::std_msgs::Float32_<ContainerAllocator>  _value_type;
  _value_type value;





  typedef boost::shared_ptr< ::paquete_practica1::FloatPose_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::paquete_practica1::FloatPose_<ContainerAllocator> const> ConstPtr;

}; // struct FloatPose_

typedef ::paquete_practica1::FloatPose_<std::allocator<void> > FloatPose;

typedef boost::shared_ptr< ::paquete_practica1::FloatPose > FloatPosePtr;
typedef boost::shared_ptr< ::paquete_practica1::FloatPose const> FloatPoseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::paquete_practica1::FloatPose_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::paquete_practica1::FloatPose_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::paquete_practica1::FloatPose_<ContainerAllocator1> & lhs, const ::paquete_practica1::FloatPose_<ContainerAllocator2> & rhs)
{
  return lhs.pose == rhs.pose &&
    lhs.value == rhs.value;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::paquete_practica1::FloatPose_<ContainerAllocator1> & lhs, const ::paquete_practica1::FloatPose_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace paquete_practica1

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::paquete_practica1::FloatPose_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::paquete_practica1::FloatPose_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::paquete_practica1::FloatPose_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::paquete_practica1::FloatPose_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::paquete_practica1::FloatPose_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::paquete_practica1::FloatPose_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::paquete_practica1::FloatPose_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f694eb8ce94fe49c547f3d40955d8fdc";
  }

  static const char* value(const ::paquete_practica1::FloatPose_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf694eb8ce94fe49cULL;
  static const uint64_t static_value2 = 0x547f3d40955d8fdcULL;
};

template<class ContainerAllocator>
struct DataType< ::paquete_practica1::FloatPose_<ContainerAllocator> >
{
  static const char* value()
  {
    return "paquete_practica1/FloatPose";
  }

  static const char* value(const ::paquete_practica1::FloatPose_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::paquete_practica1::FloatPose_<ContainerAllocator> >
{
  static const char* value()
  {
    return "geometry_msgs/Pose pose\n"
"std_msgs/Float32 value\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Float32\n"
"float32 data\n"
;
  }

  static const char* value(const ::paquete_practica1::FloatPose_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::paquete_practica1::FloatPose_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.pose);
      stream.next(m.value);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct FloatPose_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::paquete_practica1::FloatPose_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::paquete_practica1::FloatPose_<ContainerAllocator>& v)
  {
    s << indent << "pose: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose_<ContainerAllocator> >::stream(s, indent + "  ", v.pose);
    s << indent << "value: ";
    s << std::endl;
    Printer< ::std_msgs::Float32_<ContainerAllocator> >::stream(s, indent + "  ", v.value);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PAQUETE_PRACTICA1_MESSAGE_FLOATPOSE_H
