CC = gcc
CFLAGS = -Wall -Wextra -std=c11
LDFLAGS = -lcurl

SRC = main.c sendData.c
OBJ = $(SRC:.c=.o)
TARGET = rock

all: $(TARGET)

$(TARGET) : $(OBJ)
	$(CC) $(OBJ) -o $@ $(LDFLAGS)

%.o : %.c appdev.h
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJ) $(TARGET)

.PHONY: all clean
