int count_bits_zero(long x) {
    int count = 0;
    for (int i = 0; i < (int) sizeof(long) * 8; i++) {
        if ((x & 1) == 0) {
            count++;
        }
        x >>= 1;
    }
    return count;
}
