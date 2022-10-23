#include <stdio.h>

void print_array(int len, const int *B) {
    printf("\nResult: ");
    for (int i = 0; i < len; ++i) {
        printf("%d ", B[i]);
    }
}