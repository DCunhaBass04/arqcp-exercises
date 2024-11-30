#include <stdio.h>
#include "wordcount.h"

int main() {
    char str[] = " the numBEr must be saved";
    int x = count_words(str);
    printf("%d\n", x); // 5
    return 0;
}
