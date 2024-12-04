#include <stdio.h>
#include <stdint.h>

// Prints a Pascal triangle based on input
int main()
{
	uint16_t n = 5;
    	char indent = ' ';
	uint16_t space = 1;
    	uint16_t line = 1;
    	uint32_t coef = 1;
	int16_t i = 1;
	
	printf("Please enter a value (1-13): ");
	scanf("%hd", &n);
	if (n > 13 || n < 1)
		return 1;
	printf("\n");
	for (line = 1; line <= n; line++){
		for (space = 1; space <= n - line; space++)
			printf("%c%c", indent, indent);
		coef = 1;
		for (i = 1; i <= line; i++){
			printf("%4d", coef);
			coef = coef * (line - i) / i;
		}
		printf("\n");
	} 
   
	return 0;
}
