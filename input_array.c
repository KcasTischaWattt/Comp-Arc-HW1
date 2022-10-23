#include <stdio.h>

int input_array(int *A, int len) {
    for (int i = 0; i < len; ++i) {
        printf("A[%d] =", i);
        scanf("%d", A + i);
        if (A[i] > 1000 || A[i] < -1000) {
            printf("Incorrect input: %d\n", A[i]);
            return 1;
        }
    }
    return 0;
}

