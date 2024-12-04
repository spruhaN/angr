#include <stdint.h>
#include <stdio.h>

int main(void) {
  char confirm = 'n';
  int32_t input = 0;
  uint32_t one_count = 0;
  uint32_t zero_count = 0;
  int32_t mask = 0x0;

  fputs("Are you sure you want to do this? (y/n) ", stdout);
  scanf("%c", &confirm);

  if (confirm != 'y') {
    return 0;
  }

  fputs("Input an i32: ", stdout);
  scanf("%d", &input);

  for (mask = 1; mask != 0; mask <<= 1) {
    if (input & mask) {
      one_count++;
    } else {
      zero_count++;
    }
  }

  printf("%d has %u ones and %u zeroes.\n", input, one_count, zero_count);


  return 0;
}
