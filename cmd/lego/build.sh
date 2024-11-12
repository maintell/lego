#!/bin/bash

# Windows
export GOOS=windows
export GOARCH=amd64
go build -ldflags "-s -w" -o lego_amd64.exe

export GOARCH=386
go build -ldflags "-s -w" -o lego_x86.exe

# Linux
export GOOS=linux
export GOARCH=amd64
go build -ldflags "-s -w" -o lego_amd64

export GOARCH=386
go build -ldflags "-s -w" -o lego_x86
