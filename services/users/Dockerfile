FROM golang

RUN mkdir -p /go/src/try-go-kit-toolkit

ADD .. /go/src

RUN go get  -t -v ./...
RUN go get  github.com/canthefason/go-watcher
RUN go install github.com/canthefason/go-watcher/cmd/watcher

ENTRYPOINT  watcher -run try-go-kit-toolkit/users/cmd  -watch try-go-kit-toolkit/users
