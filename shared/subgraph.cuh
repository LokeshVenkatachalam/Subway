#ifndef SUBGRAPH_HPP
#define SUBGRAPH_HPP


#include "globals.hpp"


template <class E>
class Subgraph
{
private:

public:
	uint num_nodes;
	edge_t num_edges;   // CHANGED to use edge_t
	uint numActiveNodes;
	
	uint *activeNodes;
	uint *activeNodesPointer;
	E *activeEdgeList;
	
	uint *d_activeNodes;
	uint *d_activeNodesPointer;
	E *d_activeEdgeList;
	
	ull max_partition_size;
	
	Subgraph(uint num_nodes, edge_t num_edges);
};

#endif	//	SUBGRAPH_HPP



