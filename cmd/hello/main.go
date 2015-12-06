package main

import (
	"fmt"

	"github.com/Sirupsen/logrus"
	"github.com/moul/golang-boilerplate"
)

func main() {
	instance := hello.NewHello("world")
	greetings, err := instance.Hey()
	if err != nil {
		logrus.Fatalf("Failed to get greetings: %v", err)
	}
	fmt.Println(greetings)
}
