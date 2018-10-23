package app

import (
	"app/core"
	"app/helloworld"
)

// Application entry point
func main() {
	core.Logger.Info("Starting server...")
	helloworldService := helloworld.NewService()
	server := core.NewServer(helloworldService)
	server.Start()
}
