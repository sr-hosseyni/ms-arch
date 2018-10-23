package app

import (
	"gitub.com/sheypoor/sheypro/go-service-based-microservice/src/app/core"
	"gitub.com/sheypoor/sheypro/go-service-based-microservice/src/app/helloworld"
)

// Application entry point
func main() {
	core.Logger.Info("Starting server...")
	helloworldService := helloworld.NewService()
	server := core.NewServer(helloworldService)
	server.Start()
}
