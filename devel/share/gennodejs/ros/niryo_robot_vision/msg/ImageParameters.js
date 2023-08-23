// Auto-generated. Do not edit!

// (in-package niryo_robot_vision.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ImageParameters {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.brightness_factor = null;
      this.contrast_factor = null;
      this.saturation_factor = null;
    }
    else {
      if (initObj.hasOwnProperty('brightness_factor')) {
        this.brightness_factor = initObj.brightness_factor
      }
      else {
        this.brightness_factor = 0.0;
      }
      if (initObj.hasOwnProperty('contrast_factor')) {
        this.contrast_factor = initObj.contrast_factor
      }
      else {
        this.contrast_factor = 0.0;
      }
      if (initObj.hasOwnProperty('saturation_factor')) {
        this.saturation_factor = initObj.saturation_factor
      }
      else {
        this.saturation_factor = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ImageParameters
    // Serialize message field [brightness_factor]
    bufferOffset = _serializer.float64(obj.brightness_factor, buffer, bufferOffset);
    // Serialize message field [contrast_factor]
    bufferOffset = _serializer.float64(obj.contrast_factor, buffer, bufferOffset);
    // Serialize message field [saturation_factor]
    bufferOffset = _serializer.float64(obj.saturation_factor, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ImageParameters
    let len;
    let data = new ImageParameters(null);
    // Deserialize message field [brightness_factor]
    data.brightness_factor = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [contrast_factor]
    data.contrast_factor = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [saturation_factor]
    data.saturation_factor = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'niryo_robot_vision/ImageParameters';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2b9ee591aa6a512b640f955e2c18acaf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 brightness_factor
    float64 contrast_factor
    float64 saturation_factor
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ImageParameters(null);
    if (msg.brightness_factor !== undefined) {
      resolved.brightness_factor = msg.brightness_factor;
    }
    else {
      resolved.brightness_factor = 0.0
    }

    if (msg.contrast_factor !== undefined) {
      resolved.contrast_factor = msg.contrast_factor;
    }
    else {
      resolved.contrast_factor = 0.0
    }

    if (msg.saturation_factor !== undefined) {
      resolved.saturation_factor = msg.saturation_factor;
    }
    else {
      resolved.saturation_factor = 0.0
    }

    return resolved;
    }
};

module.exports = ImageParameters;
