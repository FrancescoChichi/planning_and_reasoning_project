// Auto-generated. Do not edit!

// (in-package pddl_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class PDDLAction {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.parameters = null;
      this.precondition = null;
      this.effect = null;
      this.on_condition = null;
      this.action_duration = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('parameters')) {
        this.parameters = initObj.parameters
      }
      else {
        this.parameters = '';
      }
      if (initObj.hasOwnProperty('precondition')) {
        this.precondition = initObj.precondition
      }
      else {
        this.precondition = '';
      }
      if (initObj.hasOwnProperty('effect')) {
        this.effect = initObj.effect
      }
      else {
        this.effect = '';
      }
      if (initObj.hasOwnProperty('on_condition')) {
        this.on_condition = initObj.on_condition
      }
      else {
        this.on_condition = '';
      }
      if (initObj.hasOwnProperty('action_duration')) {
        this.action_duration = initObj.action_duration
      }
      else {
        this.action_duration = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PDDLAction
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [parameters]
    bufferOffset = _serializer.string(obj.parameters, buffer, bufferOffset);
    // Serialize message field [precondition]
    bufferOffset = _serializer.string(obj.precondition, buffer, bufferOffset);
    // Serialize message field [effect]
    bufferOffset = _serializer.string(obj.effect, buffer, bufferOffset);
    // Serialize message field [on_condition]
    bufferOffset = _serializer.string(obj.on_condition, buffer, bufferOffset);
    // Serialize message field [action_duration]
    bufferOffset = _serializer.string(obj.action_duration, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PDDLAction
    let len;
    let data = new PDDLAction(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [parameters]
    data.parameters = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [precondition]
    data.precondition = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [effect]
    data.effect = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [on_condition]
    data.on_condition = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [action_duration]
    data.action_duration = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.name.length;
    length += object.parameters.length;
    length += object.precondition.length;
    length += object.effect.length;
    length += object.on_condition.length;
    length += object.action_duration.length;
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pddl_msgs/PDDLAction';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b7889bb912b39c8d55cfbda20fd28a0a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new PDDLAction(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.parameters !== undefined) {
      resolved.parameters = msg.parameters;
    }
    else {
      resolved.parameters = ''
    }

    if (msg.precondition !== undefined) {
      resolved.precondition = msg.precondition;
    }
    else {
      resolved.precondition = ''
    }

    if (msg.effect !== undefined) {
      resolved.effect = msg.effect;
    }
    else {
      resolved.effect = ''
    }

    if (msg.on_condition !== undefined) {
      resolved.on_condition = msg.on_condition;
    }
    else {
      resolved.on_condition = ''
    }

    if (msg.action_duration !== undefined) {
      resolved.action_duration = msg.action_duration;
    }
    else {
      resolved.action_duration = ''
    }

    return resolved;
    }
};

module.exports = PDDLAction;
