
#include <stdlib.h>
//#include <stdio.h>
#include "reverse.h"

int main() {
    int size = 11;
    //printf("%d      ", sizeof(int));
    int* array = calloc(size, 4);
    //array = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
    for (int i = 0; i < size; i++) array[i] = i;

    //for (int i = 0; i < size; i++) printf("%d ", array[i]);

    reverse(array, size, 3, 1);
    //printf("\n");
    //for (int i = 0; i < size; i++) printf("%d ", array[i]);
    free(array);
    return 0;


}
