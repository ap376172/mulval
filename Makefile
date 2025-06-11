MULVALROOT ?= $(CURDIR)
export MULVALROOT


default: all

BIN_DIRS := bin bin/adapter bin/metrics


$(BIN_DIRS):
	mkdir -p $@

all: $(BIN_DIRS) adapter attack_graph metrics


adapter: bin/adapter
	$(MAKE) -C src/adapter
	$(MAKE) -C src/adapter install

attack_graph: bin
	$(MAKE) -C src/attack_graph install

metrics: bin/metrics
	$(MAKE) -C src/metrics
	$(MAKE) -C src/metrics install

clean:
	$(MAKE) -C src/attack_graph clean
	$(MAKE) -C src/adapter clean
	$(MAKE) -C src/metrics clean
