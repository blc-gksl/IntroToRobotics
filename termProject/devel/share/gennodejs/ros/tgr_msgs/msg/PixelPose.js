// Auto-generated. Do not edit!

// (in-package tgr_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class PixelPose {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.vertical = null;
      this.horizontal = null;
    }
    else {
      if (initObj.hasOwnProperty('vertical')) {
        this.vertical = initObj.vertical
      }
      else {
        this.vertical = 0;
      }
      if (initObj.hasOwnProperty('horizontal')) {
        this.horizontal = initObj.horizontal
      }
      else {
        this.horizontal = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PixelPose
    // Serialize message field [vertical]
    bufferOffset = _serializer.int32(obj.vertical, buffer, bufferOffset);
    // Serialize message field [horizontal]
    bufferOffset = _serializer.int32(obj.horizontal, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PixelPose
    let len;
    let data = new PixelPose(null);
    // Deserialize message field [vertical]
    data.vertical = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [horizontal]
    data.horizontal = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tgr_msgs/PixelPose';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bd3d11edbbe650abcf221f4b7803fa7c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 vertical
    int32 horizontal
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PixelPose(null);
    if (msg.vertical !== undefined) {
      resolved.vertical = msg.vertical;
    }
    else {
      resolved.vertical = 0
    }

    if (msg.horizontal !== undefined) {
      resolved.horizontal = msg.horizontal;
    }
    else {
      resolved.horizontal = 0
    }

    return resolved;
    }
};

module.exports = PixelPose;
