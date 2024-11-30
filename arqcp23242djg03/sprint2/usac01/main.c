#include <stdio.h>
#include "asm.h"

char string[] = "sensor_id:8#type:atmospheric_temperature#value:21.60#unit:celsius#time:2470030";

int n = 0;

char token[] = "sensor_id:";
int value = 0;
int* output = &value;

int main(){
    extract_token(string, token, output);
    printf("Token value: %d\n", *output);
    return 0;
}

