// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AnonKitPkg",
    platforms: [
        .iOS(.v16),
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "AnonKit",
            targets: ["AnonKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/auth0/JWTDecode.swift", .upToNextMajor(from: "3.0.0")),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        // Uncomment below for local development
        // .binaryTarget(name: "AnonKit", path: "./Sources/AnonKit.xcframework"),
        .binaryTarget(
            name: "AnonKit", 
            url: "https://dl.cloudsmith.io/bFQP6zY5UO2hAJGx/anon/anon-sdk/raw/names/AnonKit.xcframework/versions/0.1.5/AnonKit.xcframework.zip",
            checksum: "7476c1dd03e9dc9fe88ebbf929f177fe3e19cf32c75506ef91416d405653d51a"
        ),
        .testTarget(
            name: "AnonKitPkgTests",
            dependencies: ["AnonKit"]),
    ]
)
