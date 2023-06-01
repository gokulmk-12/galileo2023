// Auto-generated. Do not edit!

// (in-package traversal.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class user_inputRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.active_input = null;
    }
    else {
      if (initObj.hasOwnProperty('active_input')) {
        this.active_input = initObj.active_input
      }
      else {
        this.active_input = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type user_inputRequest
    // Serialize message field [active_input]
    bufferOffset = _serializer.int16(obj.active_input, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type user_inputRequest
    let len;
    let data = new user_inputRequest(null);
    // Deserialize message field [active_input]
    data.active_input = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a service object
    return 'traversal/user_inputRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '27b61c18d29c1ce9cab85d9dea52400f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 active_input
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new user_inputRequest(null);
    if (msg.active_input !== undefined) {
      resolved.active_input = msg.active_input;
    }
    else {
      resolved.active_input = 0
    }

    return resolved;
    }
};

class user_inputResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type user_inputResponse
    // Serialize message field [result]
    bufferOffset = _serializer.string(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type user_inputResponse
    let len;
    let data = new user_inputResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.result);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'traversal/user_inputResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c22f2a1ed8654a0b365f1bb3f7ff2c0f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string result
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new user_inputResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: user_inputRequest,
  Response: user_inputResponse,
  md5sum() { return '932d3fdf41ce458ae95bf92e0b793237'; },
  datatype() { return 'traversal/user_input'; }
};
