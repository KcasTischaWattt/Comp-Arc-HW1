void make_array(const int *A, int len, int *B) {
    int Bm = A[len - 1];
    for (int i = 0; i < len; ++i) {
        if (A[i] < 0 && A[i] % 2 == 0) {
            Bm = A[i];
            break;
        }
    }
    for (int i = 0; i < len; ++i) {
        B[i] = A[i] * Bm;
    }
}