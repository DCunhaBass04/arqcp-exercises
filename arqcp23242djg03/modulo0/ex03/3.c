#include <stdio.h>

int mul(int a, int b) {
    int result = 0;
    
    for (int i = 0; i < b; i++) {
        result += a;
    }
    
    return result;
}

int main() {
    int num1, num2;
    
    printf("Enter two integers:\n");
    scanf("%d %d", &num1, &num2);

    int result = mul(num1, num2);

    printf("Multiplication = %d\n", result);

    return 0;
}
