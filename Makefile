CC = gcc
CFLAGS = -Wall -Wextra -O2

# Собираем все .c файлы в .o файлы
OBJ = $(patsubst %.c,%.o,$(wildcard *.c))

expr: $(OBJ)
	$(CC) $(CFLAGS) -o $@ $^ -lm

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f *.o expr
