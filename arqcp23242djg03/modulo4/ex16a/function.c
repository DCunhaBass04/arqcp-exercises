#include <stdint.h>

long join_bits(long a, long b, char pos) {
    long shiftedB = (b & 0xFFFFFFFFFFFFFFFF) << (pos + 1);
    long shiftedA = (a & 0xFFFFFFFFFFFFFFFF) >> (63 - pos);

    if (pos + 1 == 64) {
        shiftedB = 0;
    }
    
    long shift = shiftedB | shiftedA;
    return shift;
}
