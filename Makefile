ENTRY=src/app.go
TARGET=app

COMPILER=go build
FLAGS=CGO_ENABLED=0 GOOS=js GOARCH=wasm
GOROOT=$(shell go env GOROOT)

all: $(TARGET) copywasm copytemplates

app:
	$(FLAGS) go build -o build/$(TARGET).wasm $(ENTRY)

copywasm:
	cp "$(GOROOT)/misc/wasm/wasm_exec.js" build

copytemplates:
	cp templates/* build

clean:
	rm -f build/*