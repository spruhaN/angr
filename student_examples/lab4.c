#include <stdint.h>
#include <stdbool.h>
#include <stdio.h>

int main(int argc, char *argv[]) {
    
    int user_input;
    int answer = 360; 
    bool correct = false;
    uint8_t win = 101;
    int8_t loss = 1;

    printf("3 -6 -18 72\n");

    while (!correct) {
        printf("What is the next number in the sequence? ");
        scanf("%d", &user_input);

        if (user_input == answer) {
            correct = true;
            continue;
        }

        printf("Incorrect!\n");
    }

    if (correct) {
        printf("Congratulations!\n");
    }

    return 0;
}
