#ifndef GLOBALS_HPP
#define GLOBALS_HPP

#include <iostream>
#include <stdlib.h>
#include <ctime>
#include <fstream>
#include <string>
#include <ctime>
#include <random>
#include <stdio.h>
#include <iomanip>
#include <locale>
#include <sstream>
#include <string>
#include <cstring>
#include <vector>
#include <cstdlib>
#include <math.h>
#include <chrono>
#include <stdexcept>
#include <iostream>
#include <sstream> 
#include <limits>

using namespace std;

const unsigned int DIST_INFINITY = std::numeric_limits<unsigned int>::max() - 1;

typedef unsigned int uint;
typedef unsigned long long ull;
typedef unsigned long long edge_t;  // NEW: for edge counts and indices

// Optionally, if you wish to change DIST_INFINITY for edge pointers:
// const edge_t EDGE_INFINITY = std::numeric_limits<edge_t>::max() - 1;

struct OutEdge{
    uint end;
};

struct OutEdgeWeighted{
    uint end;
    uint w8;
};

struct Edge{
	uint source;
    uint end;
};

struct EdgeWeighted{
	uint source;
    uint end;
    uint w8;
};




#endif 	//	GLOBALS_HPP
