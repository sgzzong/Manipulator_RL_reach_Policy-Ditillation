// Auto-generated. Do not edit!

// (in-package niryo_robot_led_ring.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class LedRingCurrentState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.led_ring_colors = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('led_ring_colors')) {
        this.led_ring_colors = initObj.led_ring_colors
      }
      else {
        this.led_ring_colors = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LedRingCurrentState
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [led_ring_colors]
    // Serialize the length for message field [led_ring_colors]
    bufferOffset = _serializer.uint32(obj.led_ring_colors.length, buffer, bufferOffset);
    obj.led_ring_colors.forEach((val) => {
      bufferOffset = std_msgs.msg.ColorRGBA.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LedRingCurrentState
    let len;
    let data = new LedRingCurrentState(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [led_ring_colors]
    // Deserialize array length for message field [led_ring_colors]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.led_ring_colors = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.led_ring_colors[i] = std_msgs.msg.ColorRGBA.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 16 * object.led_ring_colors.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'niryo_robot_led_ring/LedRingCurrentState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ef53709298b36af9705e7fb4631b8215';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    std_msgs/ColorRGBA[] led_ring_colors
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: std_msgs/ColorRGBA
    float32 r
    float32 g
    float32 b
    float32 a
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LedRingCurrentState(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.led_ring_colors !== undefined) {
      resolved.led_ring_colors = new Array(msg.led_ring_colors.length);
      for (let i = 0; i < resolved.led_ring_colors.length; ++i) {
        resolved.led_ring_colors[i] = std_msgs.msg.ColorRGBA.Resolve(msg.led_ring_colors[i]);
      }
    }
    else {
      resolved.led_ring_colors = []
    }

    return resolved;
    }
};

module.exports = LedRingCurrentState;
