NAME := jx-app-cheese
PLUGIN_NAME := jx-brie
STATIC_NAME := ${NAME}-static

all: build

build:
	go build -o bin/${PLUGIN_NAME} brie.go
	go build -o bin/${STATIC_NAME} static.go

release:
	goreleaser

clean:
	rm -rf bin