# Swift Library

Use Swift Package Manager to create a library in a separate module and a CLI
executable that uses it as a dependency.

Source: <https://www.swift.org/documentation/package-manager/>

## Testing dependency

`swift package init --type library ...` made a library all right, but it also included tests that
don't run.  After I added a dependency on the (experimental?) `swift-testing` library and setting a
platform requirement for a compatible version of macOS, `swift test` complained that it couldn't
find the macOS SDK.  `xcode-select -switch ...` did the trick.

Source: <https://stackoverflow.com/a/43418980/112682>
