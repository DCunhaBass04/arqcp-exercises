#include "count_char.h"


int count_char(char sequence[], int asciiChar)
{
	char charToFind = (char) asciiChar;
	int numOfTimesFound = 0;
	int i = 0;
	while(sequence[i] != '\0'){
		if(sequence[i] == charToFind){
			numOfTimesFound++;
		}
		i++;
	}
	return numOfTimesFound;
}

