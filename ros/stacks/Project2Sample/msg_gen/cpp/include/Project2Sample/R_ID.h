/* Auto-generated by genmsg_cpp for file /home/charu/se306p1/ros/stacks/Project2Sample/msg/R_ID.msg */
#ifndef PROJECT2SAMPLE_MESSAGE_R_ID_H
#define PROJECT2SAMPLE_MESSAGE_R_ID_H
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
struct R_ID_ {
  typedef R_ID_<ContainerAllocator> Type;

  R_ID_()
  : R_ID(0)
  , life(0)
  , x(0.0)
  , y(0.0)
  , theta(0.0)
  {
  }

  R_ID_(const ContainerAllocator& _alloc)
  : R_ID(0)
  , life(0)
  , x(0.0)
  , y(0.0)
  , theta(0.0)
  {
  }

  typedef int64_t _R_ID_type;
  int64_t R_ID;

  typedef int64_t _life_type;
  int64_t life;

  typedef double _x_type;
  double x;

  typedef double _y_type;
  double y;

  typedef double _theta_type;
  double theta;


private:
  static const char* __s_getDataType_() { return "Project2Sample/R_ID"; }
public:
  ROS_DEPRECATED static const std::string __s_getDataType() { return __s_getDataType_(); }

  ROS_DEPRECATED const std::string __getDataType() const { return __s_getDataType_(); }

private:
  static const char* __s_getMD5Sum_() { return "68ae84a955e4de598c458bb110aab2e5"; }
public:
  ROS_DEPRECATED static const std::string __s_getMD5Sum() { return __s_getMD5Sum_(); }

  ROS_DEPRECATED const std::string __getMD5Sum() const { return __s_getMD5Sum_(); }

private:
  static const char* __s_getMessageDefinition_() { return "int64 R_ID\n\
int64 life\n\
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
    ros::serialization::serialize(stream, life);
    ros::serialization::serialize(stream, x);
    ros::serialization::serialize(stream, y);
    ros::serialization::serialize(stream, theta);
    return stream.getData();
  }

  ROS_DEPRECATED virtual uint8_t *deserialize(uint8_t *read_ptr)
  {
    ros::serialization::IStream stream(read_ptr, 1000000000);
    ros::serialization::deserialize(stream, R_ID);
    ros::serialization::deserialize(stream, life);
    ros::serialization::deserialize(stream, x);
    ros::serialization::deserialize(stream, y);
    ros::serialization::deserialize(stream, theta);
    return stream.getData();
  }

  ROS_DEPRECATED virtual uint32_t serializationLength() const
  {
    uint32_t size = 0;
    size += ros::serialization::serializationLength(R_ID);
    size += ros::serialization::serializationLength(life);
    size += ros::serialization::serializationLength(x);
    size += ros::serialization::serializationLength(y);
    size += ros::serialization::serializationLength(theta);
    return size;
  }

  typedef boost::shared_ptr< ::Project2Sample::R_ID_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::Project2Sample::R_ID_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct R_ID
typedef  ::Project2Sample::R_ID_<std::allocator<void> > R_ID;

typedef boost::shared_ptr< ::Project2Sample::R_ID> R_IDPtr;
typedef boost::shared_ptr< ::Project2Sample::R_ID const> R_IDConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::Project2Sample::R_ID_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::Project2Sample::R_ID_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace Project2Sample

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::Project2Sample::R_ID_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::Project2Sample::R_ID_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::Project2Sample::R_ID_<ContainerAllocator> > {
  static const char* value() 
  {
    return "68ae84a955e4de598c458bb110aab2e5";
  }

  static const char* value(const  ::Project2Sample::R_ID_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0x68ae84a955e4de59ULL;
  static const uint64_t static_value2 = 0x8c458bb110aab2e5ULL;
};

template<class ContainerAllocator>
struct DataType< ::Project2Sample::R_ID_<ContainerAllocator> > {
  static const char* value() 
  {
    return "Project2Sample/R_ID";
  }

  static const char* value(const  ::Project2Sample::R_ID_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::Project2Sample::R_ID_<ContainerAllocator> > {
  static const char* value() 
  {
    return "int64 R_ID\n\
int64 life\n\
float64 x\n\
float64 y\n\
float64 theta\n\
\n\
";
  }

  static const char* value(const  ::Project2Sample::R_ID_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator> struct IsFixedSize< ::Project2Sample::R_ID_<ContainerAllocator> > : public TrueType {};
} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::Project2Sample::R_ID_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.R_ID);
    stream.next(m.life);
    stream.next(m.x);
    stream.next(m.y);
    stream.next(m.theta);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct R_ID_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::Project2Sample::R_ID_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::Project2Sample::R_ID_<ContainerAllocator> & v) 
  {
    s << indent << "R_ID: ";
    Printer<int64_t>::stream(s, indent + "  ", v.R_ID);
    s << indent << "life: ";
    Printer<int64_t>::stream(s, indent + "  ", v.life);
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

#endif // PROJECT2SAMPLE_MESSAGE_R_ID_H

