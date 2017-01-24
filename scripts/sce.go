package main

import "fmt"
import "strconv"

func main() {
    fmt.Printf(strconv.FormatBool(expr1() || expr2()))
	fmt.Printf("\n")
}

func expr1() bool {
	return true
}

func expr2() bool {
	fmt.Printf("Not Short-circuit evaluation.\n")
	return true
}
