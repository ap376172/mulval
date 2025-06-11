default: install

CXX ?= g++
CXXFLAGS ?= -g -std=c++11 -DLINUX

attack_graph: attack_graph.cpp attack_graph.h Queue.h parser_stub.cpp
	$(CXX) $(CXXFLAGS) -Wno-deprecated attack_graph.cpp parser_stub.cpp -o attack_graph

install: attack_graph
	cp attack_graph ../../bin/

clean:
	rm -f *.o attack_graph
