package hello

import (
	"fmt"
	"testing"

	. "github.com/smartystreets/goconvey/convey"
)

func ExampleHello_Hey() {
	instance := NewHello("world")
	greetings, _ := instance.Hey()
	fmt.Println(greetings)
	// Output: Hello world !
}

func TestNewHello(t *testing.T) {
	Convey("Testing NewHello()", t, func() {
		instance := NewHello("world")
		So(instance.Message, ShouldEqual, "world")
		greetings, err := instance.Hey()
		So(err, ShouldBeNil)
		So(greetings, ShouldEqual, "Hello world !")
	})
}
