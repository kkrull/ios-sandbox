// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "Greeter",
    dependencies: [
        .package(url: "https://github.com/apple/example-package-figlet", branch: "main"),
        .package(url: "https://github.com/apple/swift-argument-parser", branch: "1.5.0"),
    ],
    targets: [
        .executableTarget(
            name: "Greet",
            dependencies: [
                .product(name: "ArgumentParser", package: "swift-argument-parser"),
                .product(name: "Figlet", package: "example-package-figlet"),
            ],
            path: "Sources"),
    ]
)
