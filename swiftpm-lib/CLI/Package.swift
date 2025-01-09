// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "GreetCli",
    platforms: [
        .macOS(.v10_15),
    ],
    dependencies: [
        .package(path: "../Greeter"),
    ],
    targets: [
        .executableTarget(
            name: "GreetCli",
            dependencies: [
                .product(name: "Greeter", package: "Greeter")
            ],
            path: "Sources"),
    ]
)
