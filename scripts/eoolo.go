package main

import "fmt"

func main() {
	if expr1() || expr2() {
		fmt.Printf("true\n")
	} else {
		fmt.Printf("false\n")
	}
}

func expr1() bool {
	fmt.Printf("method expr1\n")
	return true
}

func expr2() bool {
	fmt.Printf("method expr2\n")
	return true
}
