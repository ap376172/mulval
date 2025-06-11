MULVALROOT ?= $(CURDIR)
export MULVALROOT


default: all

BIN_DIRS = bin bin/adapter bin/metrics

$(BIN_DIRS):
	mkdir -p $@

all: adapter attack_graph metrics

adapter: bin/adapter
	(cd src/adapter; make; make install)

attack_graph: bin
	(cd src/attack_graph; make install)

metrics: bin/metrics
	(cd src/metrics; make; make install)

clean:
	(cd src/attack_graph; make clean)
	(cd src/adapter; make clean)
	(cd src/metrics; make clean)
