default: build

.PHONY: build
build:
	swift build

.PHONY: clean
clean:
	rm -Rf .build

.PHONY: run
run:
	swift run Greet

.PHONY: run-exec
run-exec:
	./.build/debug/Greet

.PHONY: run-me
run-me:
	swift run Greet --name Me
