#include <stdio.h>
#include <stdint.h>
#include <stdbool.h>

int main() {
    uint32_t unsigned_32 = 100;
    int8_t signed_8 = -10;
    uint8_t unsigned_8 = 20;
    int32_t accumulator = 0;
    bool is_greater = false;
    char message = 'Y';

    if (unsigned_8 + unsigned_32 > 150) {
        is_greater = true;
    }

    if (is_greater) {
        accumulator += unsigned_32 + unsigned_8;
        accumulator += signed_8;
    } else {
        accumulator += unsigned_32;
        message = 'N';
    }

    printf("Message: %c\n", message);
    return 0;
}
