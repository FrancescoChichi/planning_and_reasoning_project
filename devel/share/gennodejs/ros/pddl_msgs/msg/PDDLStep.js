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

class PDDLStep {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.action = null;
      this.args = null;
      this.start_time = null;
      this.action_duration = null;
    }
    else {
      if (initObj.hasOwnProperty('action')) {
        this.action = initObj.action
      }
      else {
        this.action = '';
      }
      if (initObj.hasOwnProperty('args')) {
        this.args = initObj.args
      }
      else {
        this.args = [];
      }
      if (initObj.hasOwnProperty('start_time')) {
        this.start_time = initObj.start_time
      }
      else {
        this.start_time = '';
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
    // Serializes a message object of type PDDLStep
    // Serialize message field [action]
    bufferOffset = _serializer.string(obj.action, buffer, bufferOffset);
    // Serialize message field [args]
    bufferOffset = _arraySerializer.string(obj.args, buffer, bufferOffset, null);
    // Serialize message field [start_time]
    bufferOffset = _serializer.string(obj.start_time, buffer, bufferOffset);
    // Serialize message field [action_duration]
    bufferOffset = _serializer.string(obj.action_duration, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PDDLStep
    let len;
    let data = new PDDLStep(null);
    // Deserialize message field [action]
    data.action = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [args]
    data.args = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [start_time]
    data.start_time = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [action_duration]
    data.action_duration = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.action.length;
    object.args.forEach((val) => {
      length += 4 + val.length;
    });
    length += object.start_time.length;
    length += object.action_duration.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pddl_msgs/PDDLStep';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd79a0663dfa206e7ac7a0755c6d1e154';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string action
    string[] args
    string start_time
    # we can't use duration name
    string action_duration
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PDDLStep(null);
    if (msg.action !== undefined) {
      resolved.action = msg.action;
    }
    else {
      resolved.action = ''
    }

    if (msg.args !== undefined) {
      resolved.args = msg.args;
    }
    else {
      resolved.args = []
    }

    if (msg.start_time !== undefined) {
      resolved.start_time = msg.start_time;
    }
    else {
      resolved.start_time = ''
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

module.exports = PDDLStep;
