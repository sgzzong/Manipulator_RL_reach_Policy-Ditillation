// Auto-generated. Do not edit!

// (in-package niryo_robot_poses_handlers.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class GetWorkspaceMatrixPosesRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetWorkspaceMatrixPosesRequest
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetWorkspaceMatrixPosesRequest
    let len;
    let data = new GetWorkspaceMatrixPosesRequest(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.name);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'niryo_robot_poses_handlers/GetWorkspaceMatrixPosesRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c1f3d28f1b044c871e6eff2e9fc3c667';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string name
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetWorkspaceMatrixPosesRequest(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    return resolved;
    }
};

class GetWorkspaceMatrixPosesResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
      this.message = null;
      this.matrix_position = null;
      this.matrix_orientation = null;
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
      if (initObj.hasOwnProperty('matrix_position')) {
        this.matrix_position = initObj.matrix_position
      }
      else {
        this.matrix_position = [];
      }
      if (initObj.hasOwnProperty('matrix_orientation')) {
        this.matrix_orientation = initObj.matrix_orientation
      }
      else {
        this.matrix_orientation = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetWorkspaceMatrixPosesResponse
    // Serialize message field [status]
    bufferOffset = _serializer.int32(obj.status, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    // Serialize message field [matrix_position]
    // Serialize the length for message field [matrix_position]
    bufferOffset = _serializer.uint32(obj.matrix_position.length, buffer, bufferOffset);
    obj.matrix_position.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [matrix_orientation]
    // Serialize the length for message field [matrix_orientation]
    bufferOffset = _serializer.uint32(obj.matrix_orientation.length, buffer, bufferOffset);
    obj.matrix_orientation.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Quaternion.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetWorkspaceMatrixPosesResponse
    let len;
    let data = new GetWorkspaceMatrixPosesResponse(null);
    // Deserialize message field [status]
    data.status = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [matrix_position]
    // Deserialize array length for message field [matrix_position]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.matrix_position = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.matrix_position[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [matrix_orientation]
    // Deserialize array length for message field [matrix_orientation]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.matrix_orientation = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.matrix_orientation[i] = geometry_msgs.msg.Quaternion.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.message);
    length += 24 * object.matrix_position.length;
    length += 32 * object.matrix_orientation.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'niryo_robot_poses_handlers/GetWorkspaceMatrixPosesResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '73713adb73dd0b9ca6ccaa123c6a8229';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 status
    string message
    geometry_msgs/Point[] matrix_position
    geometry_msgs/Quaternion[] matrix_orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetWorkspaceMatrixPosesResponse(null);
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

    if (msg.matrix_position !== undefined) {
      resolved.matrix_position = new Array(msg.matrix_position.length);
      for (let i = 0; i < resolved.matrix_position.length; ++i) {
        resolved.matrix_position[i] = geometry_msgs.msg.Point.Resolve(msg.matrix_position[i]);
      }
    }
    else {
      resolved.matrix_position = []
    }

    if (msg.matrix_orientation !== undefined) {
      resolved.matrix_orientation = new Array(msg.matrix_orientation.length);
      for (let i = 0; i < resolved.matrix_orientation.length; ++i) {
        resolved.matrix_orientation[i] = geometry_msgs.msg.Quaternion.Resolve(msg.matrix_orientation[i]);
      }
    }
    else {
      resolved.matrix_orientation = []
    }

    return resolved;
    }
};

module.exports = {
  Request: GetWorkspaceMatrixPosesRequest,
  Response: GetWorkspaceMatrixPosesResponse,
  md5sum() { return 'de911ebce11ce8c8baf76b4fe50746b0'; },
  datatype() { return 'niryo_robot_poses_handlers/GetWorkspaceMatrixPoses'; }
};
