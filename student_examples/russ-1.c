#include <stdio.h>
#include <stdbool.h>
#include <stdint.h>
int main(){
    // Number can take 2 possible steps
    // Returns how many steps required
    int32_t my_val = 42;
    uint32_t two = 2;
    int8_t count = 0;
    uint8_t max= 15;
    
    bool b = true;
    char c = '#';


    while(b == true){
        if(count > max){
            b = false;
            count = -1;
        }
        else if (my_val == 1)
        {
            b = false;
        }
        else if (my_val % two == 0) {
            my_val = my_val/two;
            count = count+1;
        }
        else
        {
            my_val = (my_val*3)+1;
            count = count+1;
        }
    }

    printf("%c %d",c, count);
    return count;
}
