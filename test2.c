#include "keyboard.h"
#include <stdlib.h>
#include <stdio.h>

int main() {
    InitKeyboard();
    printf("Enter: \n");
    for (;;) {
        char c = GetCharacter();
        printf("%c", c);
        fflush(stdout);
        if (c == 'q') {
            break;
        }
    }
    CloseKeyboard();
}
