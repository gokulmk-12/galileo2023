// Auto-generated. Do not edit!

// (in-package sensor_pcb.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class sense {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Battery_Voltage_1 = null;
      this.Battery_Voltage_2 = null;
      this.Temperature = null;
      this.GPS_Latitude = null;
      this.GPS_Longitude = null;
      this.IMU = null;
    }
    else {
      if (initObj.hasOwnProperty('Battery_Voltage_1')) {
        this.Battery_Voltage_1 = initObj.Battery_Voltage_1
      }
      else {
        this.Battery_Voltage_1 = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('Battery_Voltage_2')) {
        this.Battery_Voltage_2 = initObj.Battery_Voltage_2
      }
      else {
        this.Battery_Voltage_2 = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('Temperature')) {
        this.Temperature = initObj.Temperature
      }
      else {
        this.Temperature = new std_msgs.msg.String();
      }
      if (initObj.hasOwnProperty('GPS_Latitude')) {
        this.GPS_Latitude = initObj.GPS_Latitude
      }
      else {
        this.GPS_Latitude = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('GPS_Longitude')) {
        this.GPS_Longitude = initObj.GPS_Longitude
      }
      else {
        this.GPS_Longitude = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('IMU')) {
        this.IMU = initObj.IMU
      }
      else {
        this.IMU = new geometry_msgs.msg.Vector3();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type sense
    // Serialize message field [Battery_Voltage_1]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.Battery_Voltage_1, buffer, bufferOffset);
    // Serialize message field [Battery_Voltage_2]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.Battery_Voltage_2, buffer, bufferOffset);
    // Serialize message field [Temperature]
    bufferOffset = std_msgs.msg.String.serialize(obj.Temperature, buffer, bufferOffset);
    // Serialize message field [GPS_Latitude]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.GPS_Latitude, buffer, bufferOffset);
    // Serialize message field [GPS_Longitude]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.GPS_Longitude, buffer, bufferOffset);
    // Serialize message field [IMU]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.IMU, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type sense
    let len;
    let data = new sense(null);
    // Deserialize message field [Battery_Voltage_1]
    data.Battery_Voltage_1 = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [Battery_Voltage_2]
    data.Battery_Voltage_2 = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [Temperature]
    data.Temperature = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    // Deserialize message field [GPS_Latitude]
    data.GPS_Latitude = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [GPS_Longitude]
    data.GPS_Longitude = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [IMU]
    data.IMU = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.String.getMessageSize(object.Temperature);
    return length + 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sensor_pcb/sense';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '11445e6cc93ea96e7fdeae6e74b4f86a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Float32 Battery_Voltage_1
    std_msgs/Float32 Battery_Voltage_2
    std_msgs/String Temperature 
    std_msgs/Float32 GPS_Latitude
    std_msgs/Float32 GPS_Longitude
    geometry_msgs/Vector3 IMU
    
    
    ================================================================================
    MSG: std_msgs/Float32
    float32 data
    ================================================================================
    MSG: std_msgs/String
    string data
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
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
    const resolved = new sense(null);
    if (msg.Battery_Voltage_1 !== undefined) {
      resolved.Battery_Voltage_1 = std_msgs.msg.Float32.Resolve(msg.Battery_Voltage_1)
    }
    else {
      resolved.Battery_Voltage_1 = new std_msgs.msg.Float32()
    }

    if (msg.Battery_Voltage_2 !== undefined) {
      resolved.Battery_Voltage_2 = std_msgs.msg.Float32.Resolve(msg.Battery_Voltage_2)
    }
    else {
      resolved.Battery_Voltage_2 = new std_msgs.msg.Float32()
    }

    if (msg.Temperature !== undefined) {
      resolved.Temperature = std_msgs.msg.String.Resolve(msg.Temperature)
    }
    else {
      resolved.Temperature = new std_msgs.msg.String()
    }

    if (msg.GPS_Latitude !== undefined) {
      resolved.GPS_Latitude = std_msgs.msg.Float32.Resolve(msg.GPS_Latitude)
    }
    else {
      resolved.GPS_Latitude = new std_msgs.msg.Float32()
    }

    if (msg.GPS_Longitude !== undefined) {
      resolved.GPS_Longitude = std_msgs.msg.Float32.Resolve(msg.GPS_Longitude)
    }
    else {
      resolved.GPS_Longitude = new std_msgs.msg.Float32()
    }

    if (msg.IMU !== undefined) {
      resolved.IMU = geometry_msgs.msg.Vector3.Resolve(msg.IMU)
    }
    else {
      resolved.IMU = new geometry_msgs.msg.Vector3()
    }

    return resolved;
    }
};

module.exports = sense;
