#!/usr/bin/env python

from semantic_map_utils import *
map_file = "semantic_map.txt" 
map=load_map(map_file)
map=init_sem_map(map)
#print remove_object_from_platform(map,"WS01","BEARING1")
print add_object_to_platfrom(map, "WS01", "BEARING1", [1,1,3,35])
#print find_obj_in_map(map,"BEARING1")
#print put_object_in_slot(map,"BEARING1","slot1")
print find_obj_in_map(map,"BEARING1")
#remove_objet_from_youbot_slot(map, "BEARING1", "slot1")

print pick_up_object(map,"WS01","BEARING1","slot3")
print find_obj_in_map(map,"BEARING1")
print drop_object(map,"WS02","BEARING1","slot3")
print find_obj_in_map(map,"BEARING1")
save_map(map_file,map)
