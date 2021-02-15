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

class MotorVal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.right_wheel = null;
      this.left_wheel = null;
    }
    else {
      if (initObj.hasOwnProperty('right_wheel')) {
        this.right_wheel = initObj.right_wheel
      }
      else {
        this.right_wheel = 0.0;
      }
      if (initObj.hasOwnProperty('left_wheel')) {
        this.left_wheel = initObj.left_wheel
      }
      else {
        this.left_wheel = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MotorVal
    // Serialize message field [right_wheel]
    bufferOffset = _serializer.float64(obj.right_wheel, buffer, bufferOffset);
    // Serialize message field [left_wheel]
    bufferOffset = _serializer.float64(obj.left_wheel, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MotorVal
    let len;
    let data = new MotorVal(null);
    // Deserialize message field [right_wheel]
    data.right_wheel = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [left_wheel]
    data.left_wheel = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tgr_msgs/MotorVal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0140256f3024b29a22db1f900fae1463';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 right_wheel
    float64 left_wheel
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MotorVal(null);
    if (msg.right_wheel !== undefined) {
      resolved.right_wheel = msg.right_wheel;
    }
    else {
      resolved.right_wheel = 0.0
    }

    if (msg.left_wheel !== undefined) {
      resolved.left_wheel = msg.left_wheel;
    }
    else {
      resolved.left_wheel = 0.0
    }

    return resolved;
    }
};

module.exports = MotorVal;
