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

class CameraSpecs {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.vertical_resolution = null;
      this.horizontal_resolution = null;
      this.vertical_fov = null;
      this.horizontal_fov = null;
      this.camera_position = null;
      this.camera_orientation = null;
    }
    else {
      if (initObj.hasOwnProperty('vertical_resolution')) {
        this.vertical_resolution = initObj.vertical_resolution
      }
      else {
        this.vertical_resolution = 0;
      }
      if (initObj.hasOwnProperty('horizontal_resolution')) {
        this.horizontal_resolution = initObj.horizontal_resolution
      }
      else {
        this.horizontal_resolution = 0;
      }
      if (initObj.hasOwnProperty('vertical_fov')) {
        this.vertical_fov = initObj.vertical_fov
      }
      else {
        this.vertical_fov = 0.0;
      }
      if (initObj.hasOwnProperty('horizontal_fov')) {
        this.horizontal_fov = initObj.horizontal_fov
      }
      else {
        this.horizontal_fov = 0.0;
      }
      if (initObj.hasOwnProperty('camera_position')) {
        this.camera_position = initObj.camera_position
      }
      else {
        this.camera_position = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('camera_orientation')) {
        this.camera_orientation = initObj.camera_orientation
      }
      else {
        this.camera_orientation = new geometry_msgs.msg.Point();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CameraSpecs
    // Serialize message field [vertical_resolution]
    bufferOffset = _serializer.int32(obj.vertical_resolution, buffer, bufferOffset);
    // Serialize message field [horizontal_resolution]
    bufferOffset = _serializer.int32(obj.horizontal_resolution, buffer, bufferOffset);
    // Serialize message field [vertical_fov]
    bufferOffset = _serializer.float64(obj.vertical_fov, buffer, bufferOffset);
    // Serialize message field [horizontal_fov]
    bufferOffset = _serializer.float64(obj.horizontal_fov, buffer, bufferOffset);
    // Serialize message field [camera_position]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.camera_position, buffer, bufferOffset);
    // Serialize message field [camera_orientation]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.camera_orientation, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CameraSpecs
    let len;
    let data = new CameraSpecs(null);
    // Deserialize message field [vertical_resolution]
    data.vertical_resolution = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [horizontal_resolution]
    data.horizontal_resolution = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [vertical_fov]
    data.vertical_fov = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [horizontal_fov]
    data.horizontal_fov = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [camera_position]
    data.camera_position = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [camera_orientation]
    data.camera_orientation = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 72;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tgr_msgs/CameraSpecs';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '68b9d8e8fe95a0178aa4b8e3061de049';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 vertical_resolution
    int32 horizontal_resolution
    float64 vertical_fov
    float64 horizontal_fov
    geometry_msgs/Point camera_position
    geometry_msgs/Point camera_orientation
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
    const resolved = new CameraSpecs(null);
    if (msg.vertical_resolution !== undefined) {
      resolved.vertical_resolution = msg.vertical_resolution;
    }
    else {
      resolved.vertical_resolution = 0
    }

    if (msg.horizontal_resolution !== undefined) {
      resolved.horizontal_resolution = msg.horizontal_resolution;
    }
    else {
      resolved.horizontal_resolution = 0
    }

    if (msg.vertical_fov !== undefined) {
      resolved.vertical_fov = msg.vertical_fov;
    }
    else {
      resolved.vertical_fov = 0.0
    }

    if (msg.horizontal_fov !== undefined) {
      resolved.horizontal_fov = msg.horizontal_fov;
    }
    else {
      resolved.horizontal_fov = 0.0
    }

    if (msg.camera_position !== undefined) {
      resolved.camera_position = geometry_msgs.msg.Point.Resolve(msg.camera_position)
    }
    else {
      resolved.camera_position = new geometry_msgs.msg.Point()
    }

    if (msg.camera_orientation !== undefined) {
      resolved.camera_orientation = geometry_msgs.msg.Point.Resolve(msg.camera_orientation)
    }
    else {
      resolved.camera_orientation = new geometry_msgs.msg.Point()
    }

    return resolved;
    }
};

module.exports = CameraSpecs;
