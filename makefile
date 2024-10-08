file = main
CFLAGS = -Wall -Wextra
D ?= 0

ifeq ($(D), 1)
    CFLAGS += -DDEBUG -g
endif

all: main

main: $(file).c
	gcc $(CFLAGS) $(file).c -o stree

clean:
	rm -f stree

run: clean main
	./stree ../my_files/