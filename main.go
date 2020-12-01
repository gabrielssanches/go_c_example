package main

/*
#cgo CFLAGS: -I.
#cgo LDFLAGS: -L. -lkeyboard
#cgo LDFLAGS: -L/usr/lib -lncurses
#include <keyboard.h>
*/
import "C"
import (
    "fmt"
)

func main() {
    C.InitKeyboard()

    fmt.Printf("\nEnter: ")

    for {
        r := C.GetCharacter()

        fmt.Printf("%c", r)

        if r == 'q' {
            break
        }
    }

    C.CloseKeyboard()
}
