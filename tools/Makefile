include .make/inc

all:$(TARGETS)
shellexecute$(BIN_SUFFIX):$(shellexecute_DEPS) $(shellexecute_OBJS) 
	echo "(LD) $@"; mkdir -p `dirname $@`; $(LD) -out:$@ $(shellexecute_OBJS) $(shellexecute_LDFLAGS) $(LDFLAGS)  $(shellexecute_LIBS) $(LIBS) 
-include $(OBJDIR)/objects/shellexecute/shellexecute.d
include .make/stub

clean:
	rm -f $(TARGETS) $(TARGETS_OBJS)
	echo 'run make clean-all to clean all targets'
clean-all:
	rm -f $(TARGETS) $(TARGETS_OBJS) $(TARGETS_DEPS) $(TARGETS_EXTRA)
