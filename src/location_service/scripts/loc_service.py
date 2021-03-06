#!/usr/bin/env python

import roslib#; roslib.load_manifest('location_service')
import rospy
import tf
import cPickle as pickle

from location_service.srv import *
from location_service.msg import Location
from geometry_msgs.msg import Pose, Point, Quaternion
from sensor_msgs.msg import LaserScan

from os import path

class LocationService():

    def cb_scan(self, msg):
        self.last_scan = msg

    def handle_store_location(self, req):
        rospy.loginfo("Trying to store location %s", req.name)

        if(self.last_scan is None):
            rospy.logerr("No laser scan received yet")
            return StoreLocationResponse(False,"No laser scan received yet")

        if(self.last_scan.header.stamp - rospy.Time.now()).to_sec() > 0.5:
            rospy.logerr("Last scan older than 0.5 seconds")

        try:
            (trans,rot) = self.tf_listener.lookupTransform('/map','/base_link', rospy.Time(0))
        except (tf.LookupException, tf.ConnectivityException, tf.ExtrapolationException):
            rospy.logerr("Cannot get transform from /map to /base_link")
            return StoreLocationResponse(False,"Cannot get transform from /map to /base_link")

        pose = Pose()
        pose.position = Point(trans[0],trans[1],trans[2])
        pose.orientation = Quaternion(rot[0],rot[1],rot[2],rot[3])

        location = Location(req.name, pose, self.last_scan)

        locations = []

        try:
            locations = pickle.load(open(self.full_path, "rb"))
        except(pickle.UnpicklingError, IOError, EOFError):
            rospy.logwarn("Locations file could not be read")

        for loc in locations:
            if loc.name == req.name:
                rospy.logerr("Name %s already taken", req.name)
                return StoreLocationResponse(False,"Name %s already taken"%(req.name))

        locations.append(location)

        pickle.dump(locations, open(self.full_path, "wb"))
        rospy.loginfo("Location %s added", req.name)
        return StoreLocationResponse(True,"")

    def handle_get_location(self, req):
        res = []

        try:
            locations = pickle.load(open(self.full_path, "rb"))
        except(pickle.UnpicklingError, IOError, EOFError):
            rospy.logwarn("Locations file could not be read")
            return GetLocationResponse(res)

        if req.name == "": #No name specified = get all the locations
            res = locations
        else:
            for location in locations:
                if location.name == req.name:
                    res.append(location)
                    break

        return GetLocationResponse(res)

    def handle_delete_location(self, req):
        res = []

        if req.name == "": #No name specified = delete the locations
            pickle.dump(res, open(self.full_path, "wb"))
            rospy.loginfo("All locations deleted")
            return DeleteLocationResponse(True, "All locations deleted")

        try:
            locations = pickle.load(open(self.full_path, "rb"))
        except(pickle.UnpicklingError, IOError, EOFError):
            rospy.logwarn("Locations file could not be read")
            return DeleteLocationResponse(False,"Locations file could not be read")

        for loc in locations:
            if loc.name == req.name:
                locations.remove(loc)
                break

        pickle.dump(locations, open(self.full_path, "wb"))
        rospy.loginfo("Location %s deleted", req.name)
        return DeleteLocationResponse(True,"Location %s deleted"%(req.name))

    def __init__(self):
        self.s_store = rospy.Service('location_service/store_location', StoreLocation, self.handle_store_location)
        self.s_get = rospy.Service('location_service/get_location', GetLocation, self.handle_get_location)
        self.s_delete = rospy.Service('location_service/delete_location', DeleteLocation, self.handle_delete_location)
        self.sub_scan = rospy.Subscriber('base_scan', LaserScan, self.cb_scan)
        self.tf_listener = tf.TransformListener()
        self.last_scan = None

        filename = "locations.p"
        if rospy.has_param('~filename'):
            filename = rospy.get_param('~filename')

        self.full_path = path.join(roslib.packages.get_pkg_dir('location_service'), 'data/', filename)

        rospy.loginfo("location_service initialized")

        rospy.spin()

if __name__ == "__main__":
    rospy.init_node('location_service')
    try:
        obj = LocationService()
    except rospy.ROSInterruptException: pass #TODO Handle Exception
