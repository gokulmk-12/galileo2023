// Generated by gencpp from file traversal/rotateRequest.msg
// DO NOT EDIT!


#ifndef TRAVERSAL_MESSAGE_ROTATEREQUEST_H
#define TRAVERSAL_MESSAGE_ROTATEREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace traversal
{
template <class ContainerAllocator>
struct rotateRequest_
{
  typedef rotateRequest_<ContainerAllocator> Type;

  rotateRequest_()
    : angle(0.0)  {
    }
  rotateRequest_(const ContainerAllocator& _alloc)
    : angle(0.0)  {
  (void)_alloc;
    }



   typedef double _angle_type;
  _angle_type angle;





  typedef boost::shared_ptr< ::traversal::rotateRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::traversal::rotateRequest_<ContainerAllocator> const> ConstPtr;

}; // struct rotateRequest_

typedef ::traversal::rotateRequest_<std::allocator<void> > rotateRequest;

typedef boost::shared_ptr< ::traversal::rotateRequest > rotateRequestPtr;
typedef boost::shared_ptr< ::traversal::rotateRequest const> rotateRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::traversal::rotateRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::traversal::rotateRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::traversal::rotateRequest_<ContainerAllocator1> & lhs, const ::traversal::rotateRequest_<ContainerAllocator2> & rhs)
{
  return lhs.angle == rhs.angle;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::traversal::rotateRequest_<ContainerAllocator1> & lhs, const ::traversal::rotateRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace traversal

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::traversal::rotateRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::traversal::rotateRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::traversal::rotateRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::traversal::rotateRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::traversal::rotateRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::traversal::rotateRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::traversal::rotateRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4edb55038e2b888976a0c0c56935341c";
  }

  static const char* value(const ::traversal::rotateRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4edb55038e2b8889ULL;
  static const uint64_t static_value2 = 0x76a0c0c56935341cULL;
};

template<class ContainerAllocator>
struct DataType< ::traversal::rotateRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "traversal/rotateRequest";
  }

  static const char* value(const ::traversal::rotateRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::traversal::rotateRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 angle\n"
;
  }

  static const char* value(const ::traversal::rotateRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::traversal::rotateRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.angle);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct rotateRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::traversal::rotateRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::traversal::rotateRequest_<ContainerAllocator>& v)
  {
    s << indent << "angle: ";
    Printer<double>::stream(s, indent + "  ", v.angle);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TRAVERSAL_MESSAGE_ROTATEREQUEST_H
