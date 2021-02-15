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

class VehicleMode {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mission = null;
      this.visial_guidance = null;
      this.obstacle_avoidance = null;
      this.mode = null;
    }
    else {
      if (initObj.hasOwnProperty('mission')) {
        this.mission = initObj.mission
      }
      else {
        this.mission = false;
      }
      if (initObj.hasOwnProperty('visial_guidance')) {
        this.visial_guidance = initObj.visial_guidance
      }
      else {
        this.visial_guidance = false;
      }
      if (initObj.hasOwnProperty('obstacle_avoidance')) {
        this.obstacle_avoidance = initObj.obstacle_avoidance
      }
      else {
        this.obstacle_avoidance = false;
      }
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VehicleMode
    // Serialize message field [mission]
    bufferOffset = _serializer.bool(obj.mission, buffer, bufferOffset);
    // Serialize message field [visial_guidance]
    bufferOffset = _serializer.bool(obj.visial_guidance, buffer, bufferOffset);
    // Serialize message field [obstacle_avoidance]
    bufferOffset = _serializer.bool(obj.obstacle_avoidance, buffer, bufferOffset);
    // Serialize message field [mode]
    bufferOffset = _serializer.int32(obj.mode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VehicleMode
    let len;
    let data = new VehicleMode(null);
    // Deserialize message field [mission]
    data.mission = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [visial_guidance]
    data.visial_guidance = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [obstacle_avoidance]
    data.obstacle_avoidance = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [mode]
    data.mode = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 7;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tgr_msgs/VehicleMode';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0fa27dc54e25fb913feff0e9b007f61d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool mission
    bool visial_guidance
    bool obstacle_avoidance
    
    int32 mode
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VehicleMode(null);
    if (msg.mission !== undefined) {
      resolved.mission = msg.mission;
    }
    else {
      resolved.mission = false
    }

    if (msg.visial_guidance !== undefined) {
      resolved.visial_guidance = msg.visial_guidance;
    }
    else {
      resolved.visial_guidance = false
    }

    if (msg.obstacle_avoidance !== undefined) {
      resolved.obstacle_avoidance = msg.obstacle_avoidance;
    }
    else {
      resolved.obstacle_avoidance = false
    }

    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = 0
    }

    return resolved;
    }
};

module.exports = VehicleMode;
