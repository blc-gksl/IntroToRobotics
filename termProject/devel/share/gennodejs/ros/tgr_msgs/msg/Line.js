// Auto-generated. Do not edit!

// (in-package tgr_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class Line {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.point_begin = null;
      this.point_end = null;
    }
    else {
      if (initObj.hasOwnProperty('point_begin')) {
        this.point_begin = initObj.point_begin
      }
      else {
        this.point_begin = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('point_end')) {
        this.point_end = initObj.point_end
      }
      else {
        this.point_end = new geometry_msgs.msg.Point();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Line
    // Serialize message field [point_begin]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.point_begin, buffer, bufferOffset);
    // Serialize message field [point_end]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.point_end, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Line
    let len;
    let data = new Line(null);
    // Deserialize message field [point_begin]
    data.point_begin = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [point_end]
    data.point_end = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tgr_msgs/Line';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dc31879070f0eee41b7cce1d12323475';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Point point_begin
    geometry_msgs/Point point_end
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Line(null);
    if (msg.point_begin !== undefined) {
      resolved.point_begin = geometry_msgs.msg.Point.Resolve(msg.point_begin)
    }
    else {
      resolved.point_begin = new geometry_msgs.msg.Point()
    }

    if (msg.point_end !== undefined) {
      resolved.point_end = geometry_msgs.msg.Point.Resolve(msg.point_end)
    }
    else {
      resolved.point_end = new geometry_msgs.msg.Point()
    }

    return resolved;
    }
};

module.exports = Line;
