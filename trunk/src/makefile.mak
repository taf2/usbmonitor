include make.conf
OBJS=usbmonitor.o
BIN=usbmonitor$(EXT)

all:$(BIN)

clean:
	rm -f $(BIN) $(OBJS)
