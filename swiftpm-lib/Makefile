default: build

.PHONY: build
build:
	$(MAKE) -C Greeter build
	$(MAKE) -C CLI build

.PHONY: clean
clean:
	$(MAKE) -C Greeter clean
	$(MAKE) -C CLI clean

.PHONY: run
run:
	$(MAKE) -C Greeter run
	$(MAKE) -C CLI run

.PHONY: test
test:
	$(MAKE) -C Greeter test
	$(MAKE) -C CLI test
