#FROM golang:1.11.1-alpine3.7
FROM golang:latest

ARG USER
ARG UID

RUN useradd -m $USER -o -u $UID

RUN chown -R $USER /go

USER $USER

WORKDIR /go/src/app
