# This Makefile is meant to be used by people that do not usually work
# with Go source code. If you know what GOPATH is then you probably
# don't need to bother with make.

.PHONY: galc android ios galc-cross swarm evm all test clean
.PHONY: galc-linux galc-linux-386 galc-linux-amd64 galc-linux-mips64 galc-linux-mips64le
.PHONY: galc-linux-arm galc-linux-arm-5 galc-linux-arm-6 galc-linux-arm-7 galc-linux-arm64
.PHONY: galc-darwin galc-darwin-386 galc-darwin-amd64
.PHONY: galc-windows galc-windows-386 galc-windows-amd64

GOBIN = $(shell pwd)/build/bin
GO ?= latest

galc:
	build/env.sh go run build/ci.go install ./cmd/galc
	@echo "Done building."
	@echo "Run \"$(GOBIN)/galc\" to launch galc."

swarm:
	build/env.sh go run build/ci.go install ./cmd/swarm
	@echo "Done building."
	@echo "Run \"$(GOBIN)/swarm\" to launch swarm."

all:
	build/env.sh go run build/ci.go install

android:
	build/env.sh go run build/ci.go aar --local
	@echo "Done building."
	@echo "Import \"$(GOBIN)/galc.aar\" to use the library."

ios:
	build/env.sh go run build/ci.go xcode --local
	@echo "Done building."
	@echo "Import \"$(GOBIN)/galc.framework\" to use the library."

test: all
	build/env.sh go run build/ci.go test

clean:
	rm -fr build/_workspace/pkg/ $(GOBIN)/*

# The devtools target installs tools required for 'go generate'.
# You need to put $GOBIN (or $GOPATH/bin) in your PATH to use 'go generate'.

devtools:
	env GOBIN= go get -u golang.org/x/tools/cmd/stringer
	env GOBIN= go get -u github.com/jteeuwen/go-bindata/go-bindata
	env GOBIN= go get -u github.com/fjl/gencodec
	env GOBIN= go install ./cmd/abigen

# Cross Compilation Targets (xgo)

galc-cross: galc-linux galc-darwin galc-windows galc-android galc-ios
	@echo "Full cross compilation done:"
	@ls -ld $(GOBIN)/galc-*

galc-linux: galc-linux-386 galc-linux-amd64 galc-linux-arm galc-linux-mips64 galc-linux-mips64le
	@echo "Linux cross compilation done:"
	@ls -ld $(GOBIN)/galc-linux-*

galc-linux-386:
	build/env.sh go run build/ci.go xgo -- --go=$(GO) --targets=linux/386 -v ./cmd/galc
	@echo "Linux 386 cross compilation done:"
	@ls -ld $(GOBIN)/galc-linux-* | grep 386

galc-linux-amd64:
	build/env.sh go run build/ci.go xgo -- --go=$(GO) --targets=linux/amd64 -v ./cmd/galc
	@echo "Linux amd64 cross compilation done:"
	@ls -ld $(GOBIN)/galc-linux-* | grep amd64

galc-linux-arm: galc-linux-arm-5 galc-linux-arm-6 galc-linux-arm-7 galc-linux-arm64
	@echo "Linux ARM cross compilation done:"
	@ls -ld $(GOBIN)/galc-linux-* | grep arm

galc-linux-arm-5:
	build/env.sh go run build/ci.go xgo -- --go=$(GO) --targets=linux/arm-5 -v ./cmd/galc
	@echo "Linux ARMv5 cross compilation done:"
	@ls -ld $(GOBIN)/galc-linux-* | grep arm-5

galc-linux-arm-6:
	build/env.sh go run build/ci.go xgo -- --go=$(GO) --targets=linux/arm-6 -v ./cmd/galc
	@echo "Linux ARMv6 cross compilation done:"
	@ls -ld $(GOBIN)/galc-linux-* | grep arm-6

galc-linux-arm-7:
	build/env.sh go run build/ci.go xgo -- --go=$(GO) --targets=linux/arm-7 -v ./cmd/galc
	@echo "Linux ARMv7 cross compilation done:"
	@ls -ld $(GOBIN)/galc-linux-* | grep arm-7

galc-linux-arm64:
	build/env.sh go run build/ci.go xgo -- --go=$(GO) --targets=linux/arm64 -v ./cmd/galc
	@echo "Linux ARM64 cross compilation done:"
	@ls -ld $(GOBIN)/galc-linux-* | grep arm64

galc-linux-mips:
	build/env.sh go run build/ci.go xgo -- --go=$(GO) --targets=linux/mips --ldflags '-extldflags "-static"' -v ./cmd/galc
	@echo "Linux MIPS cross compilation done:"
	@ls -ld $(GOBIN)/galc-linux-* | grep mips

galc-linux-mipsle:
	build/env.sh go run build/ci.go xgo -- --go=$(GO) --targets=linux/mipsle --ldflags '-extldflags "-static"' -v ./cmd/galc
	@echo "Linux MIPSle cross compilation done:"
	@ls -ld $(GOBIN)/galc-linux-* | grep mipsle

galc-linux-mips64:
	build/env.sh go run build/ci.go xgo -- --go=$(GO) --targets=linux/mips64 --ldflags '-extldflags "-static"' -v ./cmd/galc
	@echo "Linux MIPS64 cross compilation done:"
	@ls -ld $(GOBIN)/galc-linux-* | grep mips64

galc-linux-mips64le:
	build/env.sh go run build/ci.go xgo -- --go=$(GO) --targets=linux/mips64le --ldflags '-extldflags "-static"' -v ./cmd/galc
	@echo "Linux MIPS64le cross compilation done:"
	@ls -ld $(GOBIN)/galc-linux-* | grep mips64le

galc-darwin: galc-darwin-386 galc-darwin-amd64
	@echo "Darwin cross compilation done:"
	@ls -ld $(GOBIN)/galc-darwin-*

galc-darwin-386:
	build/env.sh go run build/ci.go xgo -- --go=$(GO) --targets=darwin/386 -v ./cmd/galc
	@echo "Darwin 386 cross compilation done:"
	@ls -ld $(GOBIN)/galc-darwin-* | grep 386

galc-darwin-amd64:
	build/env.sh go run build/ci.go xgo -- --go=$(GO) --targets=darwin/amd64 -v ./cmd/galc
	@echo "Darwin amd64 cross compilation done:"
	@ls -ld $(GOBIN)/galc-darwin-* | grep amd64

galc-windows: galc-windows-386 galc-windows-amd64
	@echo "Windows cross compilation done:"
	@ls -ld $(GOBIN)/galc-windows-*

galc-windows-386:
	build/env.sh go run build/ci.go xgo -- --go=$(GO) --targets=windows/386 -v ./cmd/galc
	@echo "Windows 386 cross compilation done:"
	@ls -ld $(GOBIN)/galc-windows-* | grep 386

galc-windows-amd64:
	build/env.sh go run build/ci.go xgo -- --go=$(GO) --targets=windows/amd64 -v ./cmd/galc
	@echo "Windows amd64 cross compilation done:"
	@ls -ld $(GOBIN)/galc-windows-* | grep amd64
