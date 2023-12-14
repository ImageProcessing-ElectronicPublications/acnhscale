PROJECT = acnhscale
CC = gcc
CFLAGS = -Wall -Isrc
LDFLAGS = -s
RM = rm -f
SRCS = src/$(PROJECT).c src/lodepng.c

all: $(PROJECT)

$(PROJECT): $(SRCS)
	$(CC) $(CFLAGS) $^ $(LDFLAGS) -o $@

clean:
	$(RM) $(PROJECT)
