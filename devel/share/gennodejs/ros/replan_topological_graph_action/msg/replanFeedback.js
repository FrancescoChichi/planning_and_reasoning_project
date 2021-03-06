// Auto-generated. Do not edit!

// (in-package replan_topological_graph_action.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class replanFeedback {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.goal = null;
    }
    else {
      if (initObj.hasOwnProperty('goal')) {
        this.goal = initObj.goal
      }
      else {
        this.goal = new Array(4).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type replanFeedback
    // Check that the constant length array field [goal] has the right length
    if (obj.goal.length !== 4) {
      throw new Error('Unable to serialize array field goal - length must be 4')
    }
    // Serialize message field [goal]
    bufferOffset = _arraySerializer.float64(obj.goal, buffer, bufferOffset, 4);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type replanFeedback
    let len;
    let data = new replanFeedback(null);
    // Deserialize message field [goal]
    data.goal = _arrayDeserializer.float64(buffer, bufferOffset, 4)
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'replan_topological_graph_action/replanFeedback';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6c0f8a43662c8b5ae9791fef095791e5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    #feedback definition
    float64[4] goal
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new replanFeedback(null);
    if (msg.goal !== undefined) {
      resolved.goal = msg.goal;
    }
    else {
      resolved.goal = new Array(4).fill(0)
    }

    return resolved;
    }
};

module.exports = replanFeedback;
