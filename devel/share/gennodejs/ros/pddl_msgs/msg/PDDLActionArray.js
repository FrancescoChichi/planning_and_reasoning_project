// Auto-generated. Do not edit!

// (in-package pddl_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PDDLAction = require('./PDDLAction.js');

//-----------------------------------------------------------

class PDDLActionArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.actions = null;
    }
    else {
      if (initObj.hasOwnProperty('actions')) {
        this.actions = initObj.actions
      }
      else {
        this.actions = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PDDLActionArray
    // Serialize message field [actions]
    // Serialize the length for message field [actions]
    bufferOffset = _serializer.uint32(obj.actions.length, buffer, bufferOffset);
    obj.actions.forEach((val) => {
      bufferOffset = PDDLAction.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PDDLActionArray
    let len;
    let data = new PDDLActionArray(null);
    // Deserialize message field [actions]
    // Deserialize array length for message field [actions]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.actions = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.actions[i] = PDDLAction.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.actions.forEach((val) => {
      length += PDDLAction.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pddl_msgs/PDDLActionArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e99b1b4c780bc71e4f0a0e590a6217ed';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    pddl_msgs/PDDLAction[] actions
    
    ================================================================================
    MSG: pddl_msgs/PDDLAction
    string name
    # write String in S expression like "(and foo var)"
    string parameters
    string precondition
    string effect
    string on_condition
    # we can't use duration name
    string action_duration
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PDDLActionArray(null);
    if (msg.actions !== undefined) {
      resolved.actions = new Array(msg.actions.length);
      for (let i = 0; i < resolved.actions.length; ++i) {
        resolved.actions[i] = PDDLAction.Resolve(msg.actions[i]);
      }
    }
    else {
      resolved.actions = []
    }

    return resolved;
    }
};

module.exports = PDDLActionArray;
