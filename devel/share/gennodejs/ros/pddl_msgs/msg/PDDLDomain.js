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

class PDDLDomain {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.requirements = null;
      this.types = null;
      this.constants = null;
      this.predicates = null;
      this.actions = null;
      this.functions = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('requirements')) {
        this.requirements = initObj.requirements
      }
      else {
        this.requirements = '';
      }
      if (initObj.hasOwnProperty('types')) {
        this.types = initObj.types
      }
      else {
        this.types = [];
      }
      if (initObj.hasOwnProperty('constants')) {
        this.constants = initObj.constants
      }
      else {
        this.constants = [];
      }
      if (initObj.hasOwnProperty('predicates')) {
        this.predicates = initObj.predicates
      }
      else {
        this.predicates = [];
      }
      if (initObj.hasOwnProperty('actions')) {
        this.actions = initObj.actions
      }
      else {
        this.actions = [];
      }
      if (initObj.hasOwnProperty('functions')) {
        this.functions = initObj.functions
      }
      else {
        this.functions = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PDDLDomain
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [requirements]
    bufferOffset = _serializer.string(obj.requirements, buffer, bufferOffset);
    // Serialize message field [types]
    bufferOffset = _arraySerializer.string(obj.types, buffer, bufferOffset, null);
    // Serialize message field [constants]
    bufferOffset = _arraySerializer.string(obj.constants, buffer, bufferOffset, null);
    // Serialize message field [predicates]
    bufferOffset = _arraySerializer.string(obj.predicates, buffer, bufferOffset, null);
    // Serialize message field [actions]
    // Serialize the length for message field [actions]
    bufferOffset = _serializer.uint32(obj.actions.length, buffer, bufferOffset);
    obj.actions.forEach((val) => {
      bufferOffset = PDDLAction.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [functions]
    bufferOffset = _arraySerializer.string(obj.functions, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PDDLDomain
    let len;
    let data = new PDDLDomain(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [requirements]
    data.requirements = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [types]
    data.types = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [constants]
    data.constants = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [predicates]
    data.predicates = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [actions]
    // Deserialize array length for message field [actions]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.actions = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.actions[i] = PDDLAction.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [functions]
    data.functions = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.name.length;
    length += object.requirements.length;
    object.types.forEach((val) => {
      length += 4 + val.length;
    });
    object.constants.forEach((val) => {
      length += 4 + val.length;
    });
    object.predicates.forEach((val) => {
      length += 4 + val.length;
    });
    object.actions.forEach((val) => {
      length += PDDLAction.getMessageSize(val);
    });
    object.functions.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pddl_msgs/PDDLDomain';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1db1abf7dbdf3e62fc55c75c4b365253';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string name
    string requirements
    string[] types
    string[] constants
    string[] predicates
    pddl_msgs/PDDLAction[] actions
    string[] functions
    
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
    const resolved = new PDDLDomain(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.requirements !== undefined) {
      resolved.requirements = msg.requirements;
    }
    else {
      resolved.requirements = ''
    }

    if (msg.types !== undefined) {
      resolved.types = msg.types;
    }
    else {
      resolved.types = []
    }

    if (msg.constants !== undefined) {
      resolved.constants = msg.constants;
    }
    else {
      resolved.constants = []
    }

    if (msg.predicates !== undefined) {
      resolved.predicates = msg.predicates;
    }
    else {
      resolved.predicates = []
    }

    if (msg.actions !== undefined) {
      resolved.actions = new Array(msg.actions.length);
      for (let i = 0; i < resolved.actions.length; ++i) {
        resolved.actions[i] = PDDLAction.Resolve(msg.actions[i]);
      }
    }
    else {
      resolved.actions = []
    }

    if (msg.functions !== undefined) {
      resolved.functions = msg.functions;
    }
    else {
      resolved.functions = []
    }

    return resolved;
    }
};

module.exports = PDDLDomain;
