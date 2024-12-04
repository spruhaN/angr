#include<stdio.h>
#include<stdbool.h>
#include<stdint.h>

int main() {
  bool boolVal = true;
  int32_t int1 = -500;
  int32_t int2 = -700;
  uint32_t uint1 = 1000;
  char ch1 = 'a';
  uint8_t byte1 = 10;

  int1 -= int2;
  printf("int1 - int2 is: %d\n", int1);

  uint1 *= 3;
  printf("uint1 * 3 is: %d\n", uint1);

  if (boolVal) {
    ch1 += byte1;
    printf("Character 'a' + byte1 is: %c\n", ch1);
  }

  return 0;
}
