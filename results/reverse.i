# 1 "reverse.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "reverse.c"

void reverse(int* array, int size, int moves_num, int direction) {
    if(size < 2) return;
    moves_num = moves_num % size;
    if (direction != 0) moves_num = size - moves_num;
    int current_el_index = 0;
    int el_to_move;
    int el_to_save;
    int temp_index;
    int i = 0;
    temp_index = (current_el_index + moves_num) % size;
    el_to_move = array[0];
    el_to_save = array[temp_index];
    for (i = 0; i < size; i++) {
        array[temp_index] = el_to_move;
        el_to_move = el_to_save;
        current_el_index = temp_index;
        temp_index = (current_el_index + moves_num) % size;
        el_to_save = array[temp_index];
    }

    return;
}
