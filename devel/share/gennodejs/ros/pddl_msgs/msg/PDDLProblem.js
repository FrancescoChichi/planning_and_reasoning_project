// Auto-generated. Do not edit!

// (in-package pddl_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PDDLObject = require('./PDDLObject.js');

//-----------------------------------------------------------

class PDDLProblem {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.domain = null;
      this.objects = null;
      this.initial = null;
      this.goal = null;
      this.metric = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('domain')) {
        this.domain = initObj.domain
      }
      else {
        this.domain = '';
      }
      if (initObj.hasOwnProperty('objects')) {
        this.objects = initObj.objects
      }
      else {
        this.objects = [];
      }
      if (initObj.hasOwnProperty('initial')) {
        this.initial = initObj.initial
      }
      else {
        this.initial = [];
      }
      if (initObj.hasOwnProperty('goal')) {
        this.goal = initObj.goal
      }
      else {
        this.goal = '';
      }
      if (initObj.hasOwnProperty('metric')) {
        this.metric = initObj.metric
      }
      else {
        this.metric = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PDDLProblem
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [domain]
    bufferOffset = _serializer.string(obj.domain, buffer, bufferOffset);
    // Serialize message field [objects]
    // Serialize the length for message field [objects]
    bufferOffset = _serializer.uint32(obj.objects.length, buffer, bufferOffset);
    obj.objects.forEach((val) => {
      bufferOffset = PDDLObject.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [initial]
    bufferOffset = _arraySerializer.string(obj.initial, buffer, bufferOffset, null);
    // Serialize message field [goal]
    bufferOffset = _serializer.string(obj.goal, buffer, bufferOffset);
    // Serialize message field [metric]
    bufferOffset = _serializer.string(obj.metric, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PDDLProblem
    let len;
    let data = new PDDLProblem(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [domain]
    data.domain = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [objects]
    // Deserialize array length for message field [objects]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.objects = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.objects[i] = PDDLObject.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [initial]
    data.initial = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [goal]
    data.goal = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [metric]
    data.metric = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.name.length;
    length += object.domain.length;
    object.objects.forEach((val) => {
      length += PDDLObject.getMessageSize(val);
    });
    object.initial.forEach((val) => {
      length += 4 + val.length;
    });
    length += object.goal.length;
    length += object.metric.length;
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pddl_msgs/PDDLProblem';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dfd9bdd094d91245128f960694763882';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string name          # name of problem
    string domain        # name of domain to use
    pddl_msgs/PDDLObject[] objects # how to represent type?
    string[] initial     # initial condition
    string goal          # goal conjunction
    string metric        # metric
    
    
    ================================================================================
    MSG: pddl_msgs/PDDLObject
    # definition of PDDLObject
    string name
    string type
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PDDLProblem(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.domain !== undefined) {
      resolved.domain = msg.domain;
    }
    else {
      resolved.domain = ''
    }

    if (msg.objects !== undefined) {
      resolved.objects = new Array(msg.objects.length);
      for (let i = 0; i < resolved.objects.length; ++i) {
        resolved.objects[i] = PDDLObject.Resolve(msg.objects[i]);
      }
    }
    else {
      resolved.objects = []
    }

    if (msg.initial !== undefined) {
      resolved.initial = msg.initial;
    }
    else {
      resolved.initial = []
    }

    if (msg.goal !== undefined) {
      resolved.goal = msg.goal;
    }
    else {
      resolved.goal = ''
    }

    if (msg.metric !== undefined) {
      resolved.metric = msg.metric;
    }
    else {
      resolved.metric = ''
    }

    return resolved;
    }
};

module.exports = PDDLProblem;
