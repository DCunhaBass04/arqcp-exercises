#include "wordcount.h"

int count_words(char *str) {
    int wordCount = 0;
    
    while (*str != '\0') {
        // Skip leading spaces
        while (*str == ' ') {
            *str++;
        }
        
        if (*str != '\0') {
            wordCount++;
        }

        // Skip the current word
        while (*str != ' ' && *str != '\0') {
            *str++;
        }
    }

    return wordCount;
}
