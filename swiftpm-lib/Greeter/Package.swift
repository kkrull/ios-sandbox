// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "Greeter",
    platforms: [
        .macOS(.v10_15),
    ],
    products: [
        .library(name: "Greeter", targets: ["Greeter"]),
    ],
    dependencies: [
        .package(url: "https://github.com/swiftlang/swift-testing", branch: "6.0.2")
    ],
    targets: [
        .target(
            name: "Greeter",
            dependencies: [],
            path: "Sources"),
        .testTarget(
            name: "GreeterTests",
            dependencies: [
                .target(name: "Greeter"),
                .product(name: "Testing", package: "swift-testing"),
            ],
            path: "Tests"
        ),
    ]
)
