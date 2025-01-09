default: build

.PHONY: build
build:
	swift build

.PHONY: clean
clean:
	rm -Rf .build

.PHONY: run
run:
	swift run GreetCli

.PHONY: run-exec
run-exec:
	./.build/debug/GreetCli

.PHONY: test
test:
	@:
