CC=gcc
CFLAGS=-g -Wall -W -Wextra -Werror -fstack-protector-all -DFORTIFY_SOURCE=2 -Wall
LDFLAGS=-lpthread

all:	hrm

hrm: hrm.o antlib.o antdefs.h
	$(CC) $^ -o $@ $(LDFLAGS)
clean:
	$(RM) *.o hrm
