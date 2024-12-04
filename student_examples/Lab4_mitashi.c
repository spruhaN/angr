#include<stdio.h>
#include<stdint.h>

int main(){
        uint32_t prev1 = 1;
        uint32_t prev2 = 0;

        for(uint8_t i = 1; i <= 25; i++){
                if(i > 2){
                        uint32_t curr = prev1 + prev2;
                        prev2 = prev1;
                        prev1 = curr;
                        printf("%d ", curr);
                }
                else if(i == 1){
                        printf("%d ", prev2);
                }
                else if(i == 2){
                        printf("%d ", prev1);
                }
        }
}