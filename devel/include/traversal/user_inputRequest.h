// Generated by gencpp from file traversal/user_inputRequest.msg
// DO NOT EDIT!


#ifndef TRAVERSAL_MESSAGE_USER_INPUTREQUEST_H
#define TRAVERSAL_MESSAGE_USER_INPUTREQUEST_H


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
struct user_inputRequest_
{
  typedef user_inputRequest_<ContainerAllocator> Type;

  user_inputRequest_()
    : active_input(0)  {
    }
  user_inputRequest_(const ContainerAllocator& _alloc)
    : active_input(0)  {
  (void)_alloc;
    }



   typedef int16_t _active_input_type;
  _active_input_type active_input;





  typedef boost::shared_ptr< ::traversal::user_inputRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::traversal::user_inputRequest_<ContainerAllocator> const> ConstPtr;

}; // struct user_inputRequest_

typedef ::traversal::user_inputRequest_<std::allocator<void> > user_inputRequest;

typedef boost::shared_ptr< ::traversal::user_inputRequest > user_inputRequestPtr;
typedef boost::shared_ptr< ::traversal::user_inputRequest const> user_inputRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::traversal::user_inputRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::traversal::user_inputRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::traversal::user_inputRequest_<ContainerAllocator1> & lhs, const ::traversal::user_inputRequest_<ContainerAllocator2> & rhs)
{
  return lhs.active_input == rhs.active_input;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::traversal::user_inputRequest_<ContainerAllocator1> & lhs, const ::traversal::user_inputRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace traversal

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::traversal::user_inputRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::traversal::user_inputRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::traversal::user_inputRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::traversal::user_inputRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::traversal::user_inputRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::traversal::user_inputRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::traversal::user_inputRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "27b61c18d29c1ce9cab85d9dea52400f";
  }

  static const char* value(const ::traversal::user_inputRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x27b61c18d29c1ce9ULL;
  static const uint64_t static_value2 = 0xcab85d9dea52400fULL;
};

template<class ContainerAllocator>
struct DataType< ::traversal::user_inputRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "traversal/user_inputRequest";
  }

  static const char* value(const ::traversal::user_inputRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::traversal::user_inputRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int16 active_input\n"
;
  }

  static const char* value(const ::traversal::user_inputRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::traversal::user_inputRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.active_input);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct user_inputRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::traversal::user_inputRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::traversal::user_inputRequest_<ContainerAllocator>& v)
  {
    s << indent << "active_input: ";
    Printer<int16_t>::stream(s, indent + "  ", v.active_input);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TRAVERSAL_MESSAGE_USER_INPUTREQUEST_H
