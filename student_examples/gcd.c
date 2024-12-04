#include <stdio.h>
#include <stdbool.h>
#include <stdint.h>

int main() {
	int32_t num1 = 0;
	int32_t num2 = 0;
	uint32_t gcd = 0;
	uint32_t remainder = 0;
	bool pos_input = true;

	// assuming inputs are fine
	printf("Enter a number: ");
	scanf("%d", &num1);

	printf("Enter another number: ");
	scanf("%d", &num2);

	// we're only taking positive #s
	if (num1 <= 0 || num2 <= 0) {
		pos_input = false;
		printf("Please enter positive nums only!\n");
	}

	if (pos_input) {
		if (num1 < num2) {
			// remainder as a temp value, swap vals
			remainder = num1;
			num1 = num2;
			num2 = remainder;
		}

		// euclidean algorithm for gcd
		while (num2 != 0) {
			remainder = num1 % num2;
			num1 = num2;
			num2 = remainder;
		}
		gcd = num1;

		printf("GCD: %u\n", gcd);
	}
	return 0;
}
