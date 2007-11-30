include .make/inc

all:$(TARGETS)
	$(MAKE) -C src
include .make/stub

clean:
	rm -f $(TARGETS) $(TARGETS_OBJS)
	echo 'run make clean-all to clean all targets'
clean-all:
	rm -f $(TARGETS) $(TARGETS_OBJS) $(TARGETS_DEPS) $(TARGETS_EXTRA)
	$(MAKE) -C src clean
