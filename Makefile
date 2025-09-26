CC      := gcc
CFLAGS  := -std=c11 -Wall -Wextra -Werror -pedantic-errors \
           -Wconversion -Wsign-conversion -Wshadow -Wcast-align \
           -Wstrict-prototypes -Wmissing-prototypes -Wwrite-strings \
           -Wpointer-arith -Wundef -Wstrict-overflow=5 -Wformat=2 \
           -fsanitize=address,undefined \
           -fstack-protector-strong -fno-common -fno-builtin -fno-omit-frame-pointer \
           -Iinclude
LDFLAGS := -fsanitize=address,undefined

SRC     := $(wildcard src/*.c)
OBJ     := $(SRC:.c=.o)
TARGET  := main

.PHONY: all clean

all: $(TARGET)

$(TARGET): $(OBJ)
	$(CC) $(OBJ) -o $@ $(LDFLAGS)

src/%.o: src/%.c include/board.h
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJ) $(TARGET)

