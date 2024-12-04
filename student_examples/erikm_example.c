// available types:
// boolean
// int_32
// uint_32
// int_8
// uint_8
// char

#include <stdbool.h>
#include <stdint.h>

int main() {
	uint32_t x = 250;
	uint32_t d = 50;
	uint32_t r = 0;
	int8_t y = 5;
	int8_t f = 1;
	bool b = true;
	char a = 'A';
	r = x % d;
	r = r * 2;
	if (r == 0) {
		b = false;
	} else {
		b = true;
	}
	if (b == true) {
		if (a != 'A') {
			y = y / 5;
		} else {
			y = y * 5;
		}
		return y;
	} else {
		if (a == 'A') {
			f = f * 2;
		} else {
			f = f + 1;
		}
		return f;
	}
}


