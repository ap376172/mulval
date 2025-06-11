default: install

CXX ?= g++
CXXFLAGS ?= -g -std=c++11 -DLINUX

attack_graph: attack_graph.cpp attack_graph.h Queue.h lex.yy.o y.tab.cpp
	$(CXX) $(CXXFLAGS) -Wno-deprecated lex.yy.o y.tab.cpp attack_graph.cpp -o attack_graph

lex.yy.c: graphit.l
	flex -olex.yy.c graphit.l

lex.yy.o: lex.yy.c y.tab.cpp.h
	$(CXX) $(CXXFLAGS) -c lex.yy.c -o lex.yy.o

y.tab.cpp y.tab.cpp.h: graphit.y attack_graph.h
	bison -d -o y.tab.cpp graphit.y

install: attack_graph
	cp attack_graph ../../bin/

clean:
	rm -f y.tab.cpp y.tab.cpp.h lex.yy.c *.o attack_graph *.output
