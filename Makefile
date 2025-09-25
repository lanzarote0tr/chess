


all: main.c
	cc -std=c11 -Wall -Wextra -Werror -pedantic-errors \
   -Wconversion -Wsign-conversion -Wshadow -Wcast-align \
   -Wstrict-prototypes -Wmissing-prototypes -Wwrite-strings \
   -Wpointer-arith -Wundef -Wstrict-overflow=5 -Wformat=2 \
   -fsanitize=address,undefined \
   -fstack-protector-strong -fno-common -fno-builtin -fno-omit-frame-pointer \
   main.c -o main

