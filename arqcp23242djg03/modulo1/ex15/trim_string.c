#include "trim_string.h"
#include <stdio.h>
#include <string.h>

void trim_string(char *str) {
    // Initialize pointers for start and end of trimmed string
    char *start = str;
    char *end = str + strlen(str) - 1;

    // Trim spaces at the beginning
    while (*start == ' ' && *start != '\0') {
        *start++;
    }

    // Trim spaces at the end
    while (end > start && *end == ' ') {
        *end--;
    }

    // Move the null-terminator to the correct position
    *(end + 1) = '\0';

    // Copy the trimmed string back to the original string
    if (*str != *start) {
        memmove(str, start, end - start + 2);
    }

    // Remove multiple spaces between words
    char *src = str;
    char *dst = str;
    int spaceFlag = 0;

    while (*src) {
        if (*src == ' ') {
            if (!spaceFlag) {
                spaceFlag = 1;
                *dst++ = *src;
            }
        } else {
            spaceFlag = 0;
            *dst++ = *src;
        }
        *src++;
    }
    *dst = '\0';
}

