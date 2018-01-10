#ifndef PDDL_GENERATOR
#define PDDL_GENERATOR
#include <fstream>
#include <iostream>
#include <vector>
#include <string.h>

class PddlProblemGenerator
{
public:
    void createProblemPddl(std::vector <std::string> pddlLocations, std::vector <std::string> pddlObjects, std::vector <std::string> edges,  std::vector< std::pair<std::string,std::string> > initObjLocation, std::vector< std::pair<std::string,std::string> > goalObjLocation);
};

#endif
