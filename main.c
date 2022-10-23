#include <stdio.h>
#include <stdlib.h>


extern void make_array(const int *A, int len, int *B);
extern void print_array(int len, const int *B);
extern int input_array(int *A, int len);

int main (int argc, char *argv[]) {
    int len;
    scanf("%d", &len);
    if (len < 1 || len > 10) {
        printf("Incorrect length: %d\n", len);
        return 1;
    }

    int A[len];
    int B[len];
    if (input_array(A, len)) {
        return 1;
    }
    make_array(A, len, B);
    print_array(len, B);
    return 0;
}