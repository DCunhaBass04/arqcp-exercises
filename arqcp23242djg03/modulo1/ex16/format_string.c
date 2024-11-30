#include "format_string.h"
#include <ctype.h>
#include <string.h>

void format_string(char *str) {
    int capitalize_next = 1; // Start with capitalizing the first character
    int output_index = 0;    // Index for the modified string

    for (int i = 0; str[i]; i++) {
        if (isspace(*(str + i))) {
            // If it's a space, only add one space to the output if it's not the first space
            if (i > 0 && !isspace(*(str + i - 1))) {
                *(str + output_index) = ' ';
                output_index++;
            }
            capitalize_next = 1; // Next character should be capitalized
        } else if (capitalize_next) {
            *(str + output_index) = toupper(str[i]);
            output_index++;
            capitalize_next = 0;
        } else {
            *(str + output_index) = tolower(str[i]);
            output_index++;
        }
    }

    // Null-terminate the modified string
    *(str + output_index) = '\0';

    // Remove trailing spaces
    while (output_index > 0 && isspace(*(str + output_index - 1))) {
        *(str + --output_index) = '\0';
    }
}
