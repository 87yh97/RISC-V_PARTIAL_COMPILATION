#include <stdlib.h>
#include "reverse.h"
//void reverse(int* array, int size, int moves_num, int direction);

int main() {
    int size = 11;
    int* array = calloc(size, 4);
    for (int i = 0; i < size; i++) array[i] = i;

    reverse(array, size, 3, 1);

    free(array);
    return 0;


}
