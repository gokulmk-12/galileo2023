// Generated by gencpp from file sensor_pcb/sense.msg
// DO NOT EDIT!


#ifndef SENSOR_PCB_MESSAGE_SENSE_H
#define SENSOR_PCB_MESSAGE_SENSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Float32.h>
#include <std_msgs/Float32.h>
#include <std_msgs/String.h>
#include <std_msgs/Float32.h>
#include <std_msgs/Float32.h>
#include <geometry_msgs/Vector3.h>

namespace sensor_pcb
{
template <class ContainerAllocator>
struct sense_
{
  typedef sense_<ContainerAllocator> Type;

  sense_()
    : Battery_Voltage_1()
    , Battery_Voltage_2()
    , Temperature()
    , GPS_Latitude()
    , GPS_Longitude()
    , IMU()  {
    }
  sense_(const ContainerAllocator& _alloc)
    : Battery_Voltage_1(_alloc)
    , Battery_Voltage_2(_alloc)
    , Temperature(_alloc)
    , GPS_Latitude(_alloc)
    , GPS_Longitude(_alloc)
    , IMU(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Float32_<ContainerAllocator>  _Battery_Voltage_1_type;
  _Battery_Voltage_1_type Battery_Voltage_1;

   typedef  ::std_msgs::Float32_<ContainerAllocator>  _Battery_Voltage_2_type;
  _Battery_Voltage_2_type Battery_Voltage_2;

   typedef  ::std_msgs::String_<ContainerAllocator>  _Temperature_type;
  _Temperature_type Temperature;

   typedef  ::std_msgs::Float32_<ContainerAllocator>  _GPS_Latitude_type;
  _GPS_Latitude_type GPS_Latitude;

   typedef  ::std_msgs::Float32_<ContainerAllocator>  _GPS_Longitude_type;
  _GPS_Longitude_type GPS_Longitude;

   typedef  ::geometry_msgs::Vector3_<ContainerAllocator>  _IMU_type;
  _IMU_type IMU;





  typedef boost::shared_ptr< ::sensor_pcb::sense_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::sensor_pcb::sense_<ContainerAllocator> const> ConstPtr;

}; // struct sense_

typedef ::sensor_pcb::sense_<std::allocator<void> > sense;

typedef boost::shared_ptr< ::sensor_pcb::sense > sensePtr;
typedef boost::shared_ptr< ::sensor_pcb::sense const> senseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::sensor_pcb::sense_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::sensor_pcb::sense_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::sensor_pcb::sense_<ContainerAllocator1> & lhs, const ::sensor_pcb::sense_<ContainerAllocator2> & rhs)
{
  return lhs.Battery_Voltage_1 == rhs.Battery_Voltage_1 &&
    lhs.Battery_Voltage_2 == rhs.Battery_Voltage_2 &&
    lhs.Temperature == rhs.Temperature &&
    lhs.GPS_Latitude == rhs.GPS_Latitude &&
    lhs.GPS_Longitude == rhs.GPS_Longitude &&
    lhs.IMU == rhs.IMU;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::sensor_pcb::sense_<ContainerAllocator1> & lhs, const ::sensor_pcb::sense_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace sensor_pcb

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::sensor_pcb::sense_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::sensor_pcb::sense_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::sensor_pcb::sense_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::sensor_pcb::sense_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::sensor_pcb::sense_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::sensor_pcb::sense_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::sensor_pcb::sense_<ContainerAllocator> >
{
  static const char* value()
  {
    return "11445e6cc93ea96e7fdeae6e74b4f86a";
  }

  static const char* value(const ::sensor_pcb::sense_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x11445e6cc93ea96eULL;
  static const uint64_t static_value2 = 0x7fdeae6e74b4f86aULL;
};

template<class ContainerAllocator>
struct DataType< ::sensor_pcb::sense_<ContainerAllocator> >
{
  static const char* value()
  {
    return "sensor_pcb/sense";
  }

  static const char* value(const ::sensor_pcb::sense_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::sensor_pcb::sense_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Float32 Battery_Voltage_1\n"
"std_msgs/Float32 Battery_Voltage_2\n"
"std_msgs/String Temperature \n"
"std_msgs/Float32 GPS_Latitude\n"
"std_msgs/Float32 GPS_Longitude\n"
"geometry_msgs/Vector3 IMU\n"
"\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Float32\n"
"float32 data\n"
"================================================================================\n"
"MSG: std_msgs/String\n"
"string data\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Vector3\n"
"# This represents a vector in free space. \n"
"# It is only meant to represent a direction. Therefore, it does not\n"
"# make sense to apply a translation to it (e.g., when applying a \n"
"# generic rigid transformation to a Vector3, tf2 will only apply the\n"
"# rotation). If you want your data to be translatable too, use the\n"
"# geometry_msgs/Point message instead.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
;
  }

  static const char* value(const ::sensor_pcb::sense_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::sensor_pcb::sense_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.Battery_Voltage_1);
      stream.next(m.Battery_Voltage_2);
      stream.next(m.Temperature);
      stream.next(m.GPS_Latitude);
      stream.next(m.GPS_Longitude);
      stream.next(m.IMU);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct sense_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::sensor_pcb::sense_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::sensor_pcb::sense_<ContainerAllocator>& v)
  {
    s << indent << "Battery_Voltage_1: ";
    s << std::endl;
    Printer< ::std_msgs::Float32_<ContainerAllocator> >::stream(s, indent + "  ", v.Battery_Voltage_1);
    s << indent << "Battery_Voltage_2: ";
    s << std::endl;
    Printer< ::std_msgs::Float32_<ContainerAllocator> >::stream(s, indent + "  ", v.Battery_Voltage_2);
    s << indent << "Temperature: ";
    s << std::endl;
    Printer< ::std_msgs::String_<ContainerAllocator> >::stream(s, indent + "  ", v.Temperature);
    s << indent << "GPS_Latitude: ";
    s << std::endl;
    Printer< ::std_msgs::Float32_<ContainerAllocator> >::stream(s, indent + "  ", v.GPS_Latitude);
    s << indent << "GPS_Longitude: ";
    s << std::endl;
    Printer< ::std_msgs::Float32_<ContainerAllocator> >::stream(s, indent + "  ", v.GPS_Longitude);
    s << indent << "IMU: ";
    s << std::endl;
    Printer< ::geometry_msgs::Vector3_<ContainerAllocator> >::stream(s, indent + "  ", v.IMU);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SENSOR_PCB_MESSAGE_SENSE_H
