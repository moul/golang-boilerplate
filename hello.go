package hello

import "fmt"

type Hello struct {
	Message string
}

func NewHello(msg string) Hello {
	return Hello{
		Message: msg,
	}
}

func (h *Hello) Hey() (string, error) {
	return fmt.Sprintf("Hello %s !", h.Message), nil
}
