// Auto-generated. Do not edit!

// (in-package tgr_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PixelPose = require('./PixelPose.js');

//-----------------------------------------------------------

class PixelPoses {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pixel_0 = null;
      this.pixel_1 = null;
      this.pixel_2 = null;
    }
    else {
      if (initObj.hasOwnProperty('pixel_0')) {
        this.pixel_0 = initObj.pixel_0
      }
      else {
        this.pixel_0 = new PixelPose();
      }
      if (initObj.hasOwnProperty('pixel_1')) {
        this.pixel_1 = initObj.pixel_1
      }
      else {
        this.pixel_1 = new PixelPose();
      }
      if (initObj.hasOwnProperty('pixel_2')) {
        this.pixel_2 = initObj.pixel_2
      }
      else {
        this.pixel_2 = new PixelPose();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PixelPoses
    // Serialize message field [pixel_0]
    bufferOffset = PixelPose.serialize(obj.pixel_0, buffer, bufferOffset);
    // Serialize message field [pixel_1]
    bufferOffset = PixelPose.serialize(obj.pixel_1, buffer, bufferOffset);
    // Serialize message field [pixel_2]
    bufferOffset = PixelPose.serialize(obj.pixel_2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PixelPoses
    let len;
    let data = new PixelPoses(null);
    // Deserialize message field [pixel_0]
    data.pixel_0 = PixelPose.deserialize(buffer, bufferOffset);
    // Deserialize message field [pixel_1]
    data.pixel_1 = PixelPose.deserialize(buffer, bufferOffset);
    // Deserialize message field [pixel_2]
    data.pixel_2 = PixelPose.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tgr_msgs/PixelPoses';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4bca10ae68cd3b2be52f35ffecd1a4b4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    tgr_msgs/PixelPose pixel_0
    tgr_msgs/PixelPose pixel_1
    tgr_msgs/PixelPose pixel_2
    ================================================================================
    MSG: tgr_msgs/PixelPose
    int32 vertical
    int32 horizontal
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PixelPoses(null);
    if (msg.pixel_0 !== undefined) {
      resolved.pixel_0 = PixelPose.Resolve(msg.pixel_0)
    }
    else {
      resolved.pixel_0 = new PixelPose()
    }

    if (msg.pixel_1 !== undefined) {
      resolved.pixel_1 = PixelPose.Resolve(msg.pixel_1)
    }
    else {
      resolved.pixel_1 = new PixelPose()
    }

    if (msg.pixel_2 !== undefined) {
      resolved.pixel_2 = PixelPose.Resolve(msg.pixel_2)
    }
    else {
      resolved.pixel_2 = new PixelPose()
    }

    return resolved;
    }
};

module.exports = PixelPoses;
