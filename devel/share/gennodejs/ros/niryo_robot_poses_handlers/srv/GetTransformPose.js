// Auto-generated. Do not edit!

// (in-package niryo_robot_poses_handlers.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let niryo_robot_msgs = _finder('niryo_robot_msgs');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class GetTransformPoseRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.source_frame = null;
      this.local_frame = null;
      this.position = null;
      this.rpy = null;
    }
    else {
      if (initObj.hasOwnProperty('source_frame')) {
        this.source_frame = initObj.source_frame
      }
      else {
        this.source_frame = '';
      }
      if (initObj.hasOwnProperty('local_frame')) {
        this.local_frame = initObj.local_frame
      }
      else {
        this.local_frame = '';
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('rpy')) {
        this.rpy = initObj.rpy
      }
      else {
        this.rpy = new niryo_robot_msgs.msg.RPY();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetTransformPoseRequest
    // Serialize message field [source_frame]
    bufferOffset = _serializer.string(obj.source_frame, buffer, bufferOffset);
    // Serialize message field [local_frame]
    bufferOffset = _serializer.string(obj.local_frame, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.position, buffer, bufferOffset);
    // Serialize message field [rpy]
    bufferOffset = niryo_robot_msgs.msg.RPY.serialize(obj.rpy, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetTransformPoseRequest
    let len;
    let data = new GetTransformPoseRequest(null);
    // Deserialize message field [source_frame]
    data.source_frame = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [local_frame]
    data.local_frame = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [rpy]
    data.rpy = niryo_robot_msgs.msg.RPY.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.source_frame);
    length += _getByteLength(object.local_frame);
    return length + 56;
  }

  static datatype() {
    // Returns string type for a service object
    return 'niryo_robot_poses_handlers/GetTransformPoseRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '920e4aacae2ebd2811d6ebb594f62a7b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string source_frame
    string local_frame
    
    geometry_msgs/Point position
    niryo_robot_msgs/RPY rpy
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: niryo_robot_msgs/RPY
    # roll, pitch and yaw
    
    float64 roll
    float64 pitch
    float64 yaw
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetTransformPoseRequest(null);
    if (msg.source_frame !== undefined) {
      resolved.source_frame = msg.source_frame;
    }
    else {
      resolved.source_frame = ''
    }

    if (msg.local_frame !== undefined) {
      resolved.local_frame = msg.local_frame;
    }
    else {
      resolved.local_frame = ''
    }

    if (msg.position !== undefined) {
      resolved.position = geometry_msgs.msg.Point.Resolve(msg.position)
    }
    else {
      resolved.position = new geometry_msgs.msg.Point()
    }

    if (msg.rpy !== undefined) {
      resolved.rpy = niryo_robot_msgs.msg.RPY.Resolve(msg.rpy)
    }
    else {
      resolved.rpy = new niryo_robot_msgs.msg.RPY()
    }

    return resolved;
    }
};

class GetTransformPoseResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
      this.message = null;
      this.position = null;
      this.rpy = null;
    }
    else {
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('rpy')) {
        this.rpy = initObj.rpy
      }
      else {
        this.rpy = new niryo_robot_msgs.msg.RPY();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetTransformPoseResponse
    // Serialize message field [status]
    bufferOffset = _serializer.int32(obj.status, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.position, buffer, bufferOffset);
    // Serialize message field [rpy]
    bufferOffset = niryo_robot_msgs.msg.RPY.serialize(obj.rpy, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetTransformPoseResponse
    let len;
    let data = new GetTransformPoseResponse(null);
    // Deserialize message field [status]
    data.status = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [rpy]
    data.rpy = niryo_robot_msgs.msg.RPY.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.message);
    return length + 56;
  }

  static datatype() {
    // Returns string type for a service object
    return 'niryo_robot_poses_handlers/GetTransformPoseResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3162bdcaf59065eee3ce3b5ce55ae1b6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 status
    string message
    geometry_msgs/Point position
    niryo_robot_msgs/RPY rpy
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: niryo_robot_msgs/RPY
    # roll, pitch and yaw
    
    float64 roll
    float64 pitch
    float64 yaw
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetTransformPoseResponse(null);
    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    if (msg.position !== undefined) {
      resolved.position = geometry_msgs.msg.Point.Resolve(msg.position)
    }
    else {
      resolved.position = new geometry_msgs.msg.Point()
    }

    if (msg.rpy !== undefined) {
      resolved.rpy = niryo_robot_msgs.msg.RPY.Resolve(msg.rpy)
    }
    else {
      resolved.rpy = new niryo_robot_msgs.msg.RPY()
    }

    return resolved;
    }
};

module.exports = {
  Request: GetTransformPoseRequest,
  Response: GetTransformPoseResponse,
  md5sum() { return '65fe6112339c0f055bdcec45f6729881'; },
  datatype() { return 'niryo_robot_poses_handlers/GetTransformPose'; }
};
