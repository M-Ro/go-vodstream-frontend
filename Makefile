ENTRY=src/app.go
TARGET=app

COMPILER=go build
FLAGS=GOOS=js GOARCH=wasm
GOROOT=$(shell go env GOROOT)

all: wasm server

wasm:
	$(FLAGS) go build -o build/$(TARGET).wasm $(ENTRY)

server:
	go build -o build/$(TARGET) $(ENTRY)

clean:
	rm -f build/*