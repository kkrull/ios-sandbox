# Hello World in Swift

Source: <https://www.swift.org/getting-started/cli-swiftpm/>

## Swift

Apple Swift version 6.0.2.

It's compiled with `swiftc` (front-end) and LLVM (back-end), as described in
<https://stackoverflow.com/a/60116207/112682>.  Objective-C uses `clang` as its front-end, instead.

## Initialize

```shell
swift package init --name Greet --type executable
```

## Run

```shell
$ swift run Greet
Building for debugging...
[8/8] Applying Greet
Build of product 'Greet' complete! (24.22s)
Hello, world!
```

It eventually runs, but it takes so long I was wondering if it was stuck.

## Learnings

- Development for is done with either Swift or Objective C.
- Development is done using either [Swift Package
  Manager](https://www.swift.org/documentation/package-manager/) or Xcode, but generally [not both
  at the same time](https://stackoverflow.com/a/51791350/112682).
- Code can be built for these targets:
  - Swift Package Manager: macOS, Linux.
  - Xcode: All of the above, plus iOS, tvOS, and watchOS.

