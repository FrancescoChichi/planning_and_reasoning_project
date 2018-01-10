#!/usr/bin/env python

import roslib
import rospy

import json
from pprint import pprint
import math
from location_service.srv import *
from location_service.msg import Location
from geometry_msgs.msg import Pose, Point, Quaternion

def load_map(map_file):
	with open(map_file) as data_file:    
		return json.load(data_file)

def save_map(map_file,map):
	with open(map_file,'w') as file_:
		json.dump(map,file_,indent=4, sort_keys=True)


def check(data,item):
	for ent in data['locations']:
		if item == ent["id"]:
			return data["locations"].index(ent)	
	return -1

def check_objects(data,object):
	for ent in data['locations']:
		for obj in ent['objects']:
			if object == obj["id"]:
				return ent['objects'].index(obj)			
	return -1	

def add(map, item, class_item, position, height):
	index = check(map, item)
	molt = 30
	coordinate = {"x": str(float(position[0])), "y": str(float(position[1])), "z": str(0), "angle": str(position[2])}
	if check(map, item) < 0 :
		
		data1 ={"id": item,
			"type": class_item,
			"coordinate": coordinate ,
			"objects": [],
			"height": height
			}
		map['locations'].append(data1)
		return True	
	else:
		entity = map['locations'][index]
		
		x = entity["coordinate"]["x"]
		y = entity["coordinate"]["y"]
		z = entity["coordinate"]["z"]
		angle = entity["coordinate"]["angle"]

		return True

def add_youbot(map):
	youbot= {"youbot":{
			"slots":{
				"0":"free",
				"1":"free",
				"2":"free"},
		  	"position":""}
		}
	map.update(youbot)
	
def find_obj_in_map(map,object):
	result = ""
	for ent in map['locations']:
		for obj in ent['objects']:
			if object == obj["id"]:
				result = ent["id"]
	if result == "":
		if map["youbot"]["slots"]["0"] == object:
			return "slot1"
		if map["youbot"]["slots"]["1"] == object:
			return "slot2"
		if map["youbot"]["slots"]["2"] == object:
			return "slot3"		
	return result


def add_object_to_platfrom(map, platform_name, object_name, object_pose):
	pose = []	
	for ent in map['locations']:
		if platform_name == ent["id"]:
			pose = [ent["coordinate"]["x"], ent["coordinate"]["y"], ent["coordinate"]["angle"]]
			if check_objects(map,object_name) < 0:
				new_object = {
					"id": object_name,
					"coordinate": {"x": str(object_pose[0]),"y": str(object_pose[1]),"z": str(object_pose[2]),"angle": str(object_pose[3])}
				}
				ent["objects"].append(new_object)
				return True
			return False
	return False

def remove_object_from_platform(map,platform,_object):
	for ent in map['locations']:
		if platform == ent["id"]:
			for obj in ent["objects"]:
				if _object == obj["id"]:
					index = ent["objects"].index(obj)
					ent["objects"].pop(index)
					return True
	return False				


def delete(map,item):
	index = check(map,item)
	if index >= 0 :
		map['locations'].pop(index)
		return True
	return False	


def select_free_youbot_slot(map):
	if map["youbot"]["slots"]["0"] == "free":
		return 0
	elif map["youbot"]["slots"]["1"] == "free":
		return 1
	elif map["youbot"]["slots"]["2"] == "free":
		return 2
	else:
		return -1

def remove_objet_from_youbot_slot(map, object, slot_name):
	slots_name = {"slot1":"0","slot2":"1","slot3":"2"}
	if map["youbot"]["slots"][slots_name[slot_name]] == object:
		map["youbot"]["slots"][slots_name[slot_name]] =  "free"
		return True
	return False

#in positive case returns the slot in wich the object was poisitioned [0,1,2]
# -1 in the other case 
def put_object_in_slot(map,object,slot_name):

	#free_slot = select_free_youbot_slot(map)
	slots_name = ['slot1','slot2','slot3']
	if slots_name.index(slot_name) >= 0 :
		index = slots_name.index(slot_name)
		map["youbot"]["slots"][str(index)] = object
		return True
	return False


def pick_up_object(map,platform,object,slot_name):
	if remove_object_from_platform(map,platform,object):
		if put_object_in_slot(map,object,slot_name):
			return True
	return False		

def drop_object(map,platform,object,slot_name):
	if remove_objet_from_youbot_slot(map,object,slot_name): 
		if add_object_to_platfrom(map,platform,object,[0,0,0,0]):
			return True
	return False

def  getTheta(q):
  ysqr = q.y * q.y
  t0 = -2.0 * (ysqr + q.z * q.z) + 1.0
  t1 = +2.0 * (q.x * q.y + q.w * q.z)
  yaw = math.atan2(t1, t0)
  return yaw;

def getSemanticLocation(loc_name = ""):
	print loc_name
 	locService = rospy.ServiceProxy("location_service/get_location", GetLocation)
	rospy.loginfo("Waiting the location_service...")
	rospy.wait_for_service('location_service/get_location')
	try:
		rospy.loginfo("Getting location...")
		result = locService(loc_name)
		return result.locations
	except rospy.ServiceException, e:
		print "Service call failed: %s"%e
		return 'failed'

def load_locations_on_map(map,loc_name=""):
	locations = getSemanticLocation(loc_name)

	class_type = ""
	for loc in locations:
		name = loc.name
		#if "WS" in name or "PP" in name or "WP" in name or "CB" in name or "WC" in name or "SH" in name:
		if "WS" in name  or "WP" in name or "WC" in name or "SH" in name or "HOME" in name:
		#if "CB" in name :
			if "WS" in name:
				class_type = "platform"
			elif "PP" in name or "WP" in name or "HOME" in name:
				class_type = "position"
			elif "CB" in name or "WC" in name:
				class_type = "conveyor belt"
			elif "SH" in name :
				class_type = "shelf"

			pose = [loc.pose.position.x, loc.pose.position.y, getTheta(loc.pose.orientation)]
			add(map, name, class_type, pose, "toDo")


def init_sem_map(map):
	#load platforms, postions, shelfs and conveyor belts from loocation service
	load_locations_on_map(map)
	add_youbot(map)
	return map

