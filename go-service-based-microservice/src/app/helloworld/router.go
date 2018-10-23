package helloworld

import "core"

// RegisterRoute adds a routing to the driver
func RegisterRoute(driver *core.Engine) {
	driver.GET("/helloworld", ReplyHello)
}
