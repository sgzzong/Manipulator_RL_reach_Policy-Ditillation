// Auto-generated. Do not edit!

// (in-package niryo_robot_rpi.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class I2CComponent {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.bus = null;
      this.address = null;
      this.info = null;
    }
    else {
      if (initObj.hasOwnProperty('bus')) {
        this.bus = initObj.bus
      }
      else {
        this.bus = 0;
      }
      if (initObj.hasOwnProperty('address')) {
        this.address = initObj.address
      }
      else {
        this.address = 0;
      }
      if (initObj.hasOwnProperty('info')) {
        this.info = initObj.info
      }
      else {
        this.info = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type I2CComponent
    // Serialize message field [bus]
    bufferOffset = _serializer.uint32(obj.bus, buffer, bufferOffset);
    // Serialize message field [address]
    bufferOffset = _serializer.uint32(obj.address, buffer, bufferOffset);
    // Serialize message field [info]
    bufferOffset = _serializer.string(obj.info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type I2CComponent
    let len;
    let data = new I2CComponent(null);
    // Deserialize message field [bus]
    data.bus = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [address]
    data.address = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [info]
    data.info = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.info);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'niryo_robot_rpi/I2CComponent';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cca220cebb8afcd7e4bff9c7e8eb1631';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 bus
    uint32 address
    string info
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new I2CComponent(null);
    if (msg.bus !== undefined) {
      resolved.bus = msg.bus;
    }
    else {
      resolved.bus = 0
    }

    if (msg.address !== undefined) {
      resolved.address = msg.address;
    }
    else {
      resolved.address = 0
    }

    if (msg.info !== undefined) {
      resolved.info = msg.info;
    }
    else {
      resolved.info = ''
    }

    return resolved;
    }
};

module.exports = I2CComponent;
