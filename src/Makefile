include .make/inc

all:$(TARGETS)
$(OBJDIR)/bin/usbmonitor$(BIN_SUFFIX):$(usbmonitor_DEPS) $(usbmonitor_OBJS) 
	echo "(LD) $@"; mkdir -p `dirname $@`; $(LD) -out:$@ $(usbmonitor_OBJS) $(usbmonitor_LDFLAGS) $(LDFLAGS)  $(usbmonitor_LIBS) $(LIBS) 
-include $(OBJDIR)/objects/usbmonitor/usbmonitor.d
include .make/stub

clean:
	rm -f $(TARGETS) $(TARGETS_OBJS)
	echo 'run make clean-all to clean all targets'
clean-all:
	rm -f $(TARGETS) $(TARGETS_OBJS) $(TARGETS_DEPS) $(TARGETS_EXTRA)
