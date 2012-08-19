/* Auto-generated by genmsg_cpp for file /home/veniora/repos/se306p1/ros/stacks/Project2Sample/msg/R_ID_Follow.msg */
#ifndef PROJECT2SAMPLE_MESSAGE_R_ID_FOLLOW_H
#define PROJECT2SAMPLE_MESSAGE_R_ID_FOLLOW_H
#include <string>
#include <vector>
#include <map>
#include <ostream>
#include "ros/serialization.h"
#include "ros/builtin_message_traits.h"
#include "ros/message_operations.h"
#include "ros/time.h"

#include "ros/macros.h"

#include "ros/assert.h"


namespace Project2Sample
{
template <class ContainerAllocator>
struct R_ID_Follow_ {
  typedef R_ID_Follow_<ContainerAllocator> Type;

  R_ID_Follow_()
  : R_ID(0)
  , followID(0)
  , x(0.0)
  , y(0.0)
  , theta(0.0)
  {
  }

  R_ID_Follow_(const ContainerAllocator& _alloc)
  : R_ID(0)
  , followID(0)
  , x(0.0)
  , y(0.0)
  , theta(0.0)
  {
  }

  typedef int64_t _R_ID_type;
  int64_t R_ID;

  typedef int64_t _followID_type;
  int64_t followID;

  typedef double _x_type;
  double x;

  typedef double _y_type;
  double y;

  typedef double _theta_type;
  double theta;


private:
  static const char* __s_getDataType_() { return "Project2Sample/R_ID_Follow"; }
public:
  ROS_DEPRECATED static const std::string __s_getDataType() { return __s_getDataType_(); }

  ROS_DEPRECATED const std::string __getDataType() const { return __s_getDataType_(); }

private:
  static const char* __s_getMD5Sum_() { return "55421874238dfc5d1da6fba8c351a401"; }
public:
  ROS_DEPRECATED static const std::string __s_getMD5Sum() { return __s_getMD5Sum_(); }

  ROS_DEPRECATED const std::string __getMD5Sum() const { return __s_getMD5Sum_(); }

private:
  static const char* __s_getMessageDefinition_() { return "int64 R_ID\n\
int64 followID\n\
float64 x\n\
float64 y\n\
float64 theta\n\
\n\
"; }
public:
  ROS_DEPRECATED static const std::string __s_getMessageDefinition() { return __s_getMessageDefinition_(); }

  ROS_DEPRECATED const std::string __getMessageDefinition() const { return __s_getMessageDefinition_(); }

  ROS_DEPRECATED virtual uint8_t *serialize(uint8_t *write_ptr, uint32_t seq) const
  {
    ros::serialization::OStream stream(write_ptr, 1000000000);
    ros::serialization::serialize(stream, R_ID);
    ros::serialization::serialize(stream, followID);
    ros::serialization::serialize(stream, x);
    ros::serialization::serialize(stream, y);
    ros::serialization::serialize(stream, theta);
    return stream.getData();
  }

  ROS_DEPRECATED virtual uint8_t *deserialize(uint8_t *read_ptr)
  {
    ros::serialization::IStream stream(read_ptr, 1000000000);
    ros::serialization::deserialize(stream, R_ID);
    ros::serialization::deserialize(stream, followID);
    ros::serialization::deserialize(stream, x);
    ros::serialization::deserialize(stream, y);
    ros::serialization::deserialize(stream, theta);
    return stream.getData();
  }

  ROS_DEPRECATED virtual uint32_t serializationLength() const
  {
    uint32_t size = 0;
    size += ros::serialization::serializationLength(R_ID);
    size += ros::serialization::serializationLength(followID);
    size += ros::serialization::serializationLength(x);
    size += ros::serialization::serializationLength(y);
    size += ros::serialization::serializationLength(theta);
    return size;
  }

  typedef boost::shared_ptr< ::Project2Sample::R_ID_Follow_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::Project2Sample::R_ID_Follow_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct R_ID_Follow
typedef  ::Project2Sample::R_ID_Follow_<std::allocator<void> > R_ID_Follow;

typedef boost::shared_ptr< ::Project2Sample::R_ID_Follow> R_ID_FollowPtr;
typedef boost::shared_ptr< ::Project2Sample::R_ID_Follow const> R_ID_FollowConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::Project2Sample::R_ID_Follow_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::Project2Sample::R_ID_Follow_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace Project2Sample

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::Project2Sample::R_ID_Follow_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::Project2Sample::R_ID_Follow_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::Project2Sample::R_ID_Follow_<ContainerAllocator> > {
  static const char* value() 
  {
    return "55421874238dfc5d1da6fba8c351a401";
  }

  static const char* value(const  ::Project2Sample::R_ID_Follow_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0x55421874238dfc5dULL;
  static const uint64_t static_value2 = 0x1da6fba8c351a401ULL;
};

template<class ContainerAllocator>
struct DataType< ::Project2Sample::R_ID_Follow_<ContainerAllocator> > {
  static const char* value() 
  {
    return "Project2Sample/R_ID_Follow";
  }

  static const char* value(const  ::Project2Sample::R_ID_Follow_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::Project2Sample::R_ID_Follow_<ContainerAllocator> > {
  static const char* value() 
  {
    return "int64 R_ID\n\
int64 followID\n\
float64 x\n\
float64 y\n\
float64 theta\n\
\n\
";
  }

  static const char* value(const  ::Project2Sample::R_ID_Follow_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator> struct IsFixedSize< ::Project2Sample::R_ID_Follow_<ContainerAllocator> > : public TrueType {};
} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::Project2Sample::R_ID_Follow_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.R_ID);
    stream.next(m.followID);
    stream.next(m.x);
    stream.next(m.y);
    stream.next(m.theta);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct R_ID_Follow_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::Project2Sample::R_ID_Follow_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::Project2Sample::R_ID_Follow_<ContainerAllocator> & v) 
  {
    s << indent << "R_ID: ";
    Printer<int64_t>::stream(s, indent + "  ", v.R_ID);
    s << indent << "followID: ";
    Printer<int64_t>::stream(s, indent + "  ", v.followID);
    s << indent << "x: ";
    Printer<double>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<double>::stream(s, indent + "  ", v.y);
    s << indent << "theta: ";
    Printer<double>::stream(s, indent + "  ", v.theta);
  }
};


} // namespace message_operations
} // namespace ros

#endif // PROJECT2SAMPLE_MESSAGE_R_ID_FOLLOW_H

