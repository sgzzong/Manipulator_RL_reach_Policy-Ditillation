// Auto-generated. Do not edit!

// (in-package niryo_robot_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class BusState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.connection_status = null;
      this.motor_id_connected = null;
      this.error = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('connection_status')) {
        this.connection_status = initObj.connection_status
      }
      else {
        this.connection_status = false;
      }
      if (initObj.hasOwnProperty('motor_id_connected')) {
        this.motor_id_connected = initObj.motor_id_connected
      }
      else {
        this.motor_id_connected = [];
      }
      if (initObj.hasOwnProperty('error')) {
        this.error = initObj.error
      }
      else {
        this.error = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BusState
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [connection_status]
    bufferOffset = _serializer.bool(obj.connection_status, buffer, bufferOffset);
    // Serialize message field [motor_id_connected]
    bufferOffset = _arraySerializer.uint8(obj.motor_id_connected, buffer, bufferOffset, null);
    // Serialize message field [error]
    bufferOffset = _serializer.string(obj.error, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BusState
    let len;
    let data = new BusState(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [connection_status]
    data.connection_status = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [motor_id_connected]
    data.motor_id_connected = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [error]
    data.error = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.motor_id_connected.length;
    length += _getByteLength(object.error);
    return length + 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'niryo_robot_msgs/BusState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '213bd57ffacf403dd0100cbc0fd4d698';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    bool connection_status
    uint8[] motor_id_connected
    string error
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BusState(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.connection_status !== undefined) {
      resolved.connection_status = msg.connection_status;
    }
    else {
      resolved.connection_status = false
    }

    if (msg.motor_id_connected !== undefined) {
      resolved.motor_id_connected = msg.motor_id_connected;
    }
    else {
      resolved.motor_id_connected = []
    }

    if (msg.error !== undefined) {
      resolved.error = msg.error;
    }
    else {
      resolved.error = ''
    }

    return resolved;
    }
};

module.exports = BusState;
