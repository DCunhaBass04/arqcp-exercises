#include <stdio.h>

short rotate_left(short num, char nbits){
	return (num << nbits) | (num >> (16 - nbits));
}

short rotate_right(short num, char nbits){
	return (num >> nbits) | (num << (16 - nbits));
}

