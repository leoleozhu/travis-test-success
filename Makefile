# toolchains
CC=gcc
LINK=gcc
CFLAGS=-O0

# project settings
OBJS=main.o
TARGET=travis-test

# tasks
%.o: %.c 
	$(CC) -c -o $@ $< $(CFLAGS)

$(TARGET): $(OBJS)
	$(LINK) -o $@ $< $(CFLAGS)

clean:
	rm -f $(OBJS) $(TARGET)
