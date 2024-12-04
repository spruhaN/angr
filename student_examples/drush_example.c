#include <stdio.h>
#include <stdint.h>

int main() {
	uint8_t input = '0';
	uint32_t added = 41;
	uint8_t two = 2;
	uint8_t max = 255;
	char final = 0;

	printf("What's your uint8? (0-255) ");
	scanf("%hhu", &input);

	input = (input + added) % max;
	input = (input * two) % max;

	final += input;

	printf("Your magic character: %c\n", final);
}
