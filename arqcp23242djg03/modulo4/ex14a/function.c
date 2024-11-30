int set_bit(long *ptr, char pos) {
    // Create a mask by shifting the bit 1 to the left by the specified position
    long mask = 1L << pos;

    // Check if the bit at the specified position is unset
    int was_altered = (*ptr & mask) == 0;
    
    // Set the bit at the specified position by performing a bitwise OR operation
    *ptr |= mask;
    return was_altered;
}