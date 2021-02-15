// Generated by gencpp from file tgr_msgs/Int.msg
// DO NOT EDIT!


#ifndef TGR_MSGS_MESSAGE_INT_H
#define TGR_MSGS_MESSAGE_INT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace tgr_msgs
{
template <class ContainerAllocator>
struct Int_
{
  typedef Int_<ContainerAllocator> Type;

  Int_()
    : value(0)  {
    }
  Int_(const ContainerAllocator& _alloc)
    : value(0)  {
  (void)_alloc;
    }



   typedef int32_t _value_type;
  _value_type value;





  typedef boost::shared_ptr< ::tgr_msgs::Int_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::tgr_msgs::Int_<ContainerAllocator> const> ConstPtr;

}; // struct Int_

typedef ::tgr_msgs::Int_<std::allocator<void> > Int;

typedef boost::shared_ptr< ::tgr_msgs::Int > IntPtr;
typedef boost::shared_ptr< ::tgr_msgs::Int const> IntConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::tgr_msgs::Int_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::tgr_msgs::Int_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::tgr_msgs::Int_<ContainerAllocator1> & lhs, const ::tgr_msgs::Int_<ContainerAllocator2> & rhs)
{
  return lhs.value == rhs.value;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::tgr_msgs::Int_<ContainerAllocator1> & lhs, const ::tgr_msgs::Int_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace tgr_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::tgr_msgs::Int_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::tgr_msgs::Int_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tgr_msgs::Int_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tgr_msgs::Int_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tgr_msgs::Int_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tgr_msgs::Int_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::tgr_msgs::Int_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b3087778e93fcd34cc8d65bc54e850d1";
  }

  static const char* value(const ::tgr_msgs::Int_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb3087778e93fcd34ULL;
  static const uint64_t static_value2 = 0xcc8d65bc54e850d1ULL;
};

template<class ContainerAllocator>
struct DataType< ::tgr_msgs::Int_<ContainerAllocator> >
{
  static const char* value()
  {
    return "tgr_msgs/Int";
  }

  static const char* value(const ::tgr_msgs::Int_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::tgr_msgs::Int_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 value\n"
;
  }

  static const char* value(const ::tgr_msgs::Int_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::tgr_msgs::Int_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.value);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Int_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::tgr_msgs::Int_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::tgr_msgs::Int_<ContainerAllocator>& v)
  {
    s << indent << "value: ";
    Printer<int32_t>::stream(s, indent + "  ", v.value);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TGR_MSGS_MESSAGE_INT_H
