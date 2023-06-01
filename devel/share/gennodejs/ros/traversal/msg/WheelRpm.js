// Auto-generated. Do not edit!

// (in-package traversal.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class WheelRpm {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.vel = null;
      this.omega = null;
      this.hb = null;
    }
    else {
      if (initObj.hasOwnProperty('vel')) {
        this.vel = initObj.vel
      }
      else {
        this.vel = 0;
      }
      if (initObj.hasOwnProperty('omega')) {
        this.omega = initObj.omega
      }
      else {
        this.omega = 0;
      }
      if (initObj.hasOwnProperty('hb')) {
        this.hb = initObj.hb
      }
      else {
        this.hb = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WheelRpm
    // Serialize message field [vel]
    bufferOffset = _serializer.int16(obj.vel, buffer, bufferOffset);
    // Serialize message field [omega]
    bufferOffset = _serializer.int16(obj.omega, buffer, bufferOffset);
    // Serialize message field [hb]
    bufferOffset = _serializer.bool(obj.hb, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WheelRpm
    let len;
    let data = new WheelRpm(null);
    // Deserialize message field [vel]
    data.vel = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [omega]
    data.omega = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [hb]
    data.hb = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'traversal/WheelRpm';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '524ce3b1091d34ce15083042edf1da49';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 vel
    int16 omega
    bool hb
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WheelRpm(null);
    if (msg.vel !== undefined) {
      resolved.vel = msg.vel;
    }
    else {
      resolved.vel = 0
    }

    if (msg.omega !== undefined) {
      resolved.omega = msg.omega;
    }
    else {
      resolved.omega = 0
    }

    if (msg.hb !== undefined) {
      resolved.hb = msg.hb;
    }
    else {
      resolved.hb = false
    }

    return resolved;
    }
};

module.exports = WheelRpm;
