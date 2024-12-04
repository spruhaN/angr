#include <stdio.h>
#include <stdint.h>
#include <stdbool.h>

int main(){
    bool myBool = false;
    int32_t inp = 10;
    int32_t key = 34;
    int8_t myInt64 = 10;
    char myChar = 'a';
    uint32_t myUInt32 = 10;
    uint8_t myUInt8 = 10;

    printf("Please enter key (1-100): ");
    while(inp != key){
        scanf("%d", &inp);
        printf("You entered: %d\n", inp);
        myInt64 -= 10;
        inp -= 10;
        myUInt32 -= 10;
        myUInt8 -= 10;
        if(inp == key && myBool){
            printf("Super secret :o\n");
        } else {
            printf("Incorrect key. Try again or quit.\n");
        }

        if(inp == -3){
            printf("Activated secret mechanism. What does it do?\n");
            myBool = true;
        }
    }
}