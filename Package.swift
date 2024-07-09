// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "0.3.4"
let checksum = "4f6c5e86458b7e386280f488401f6a9d79ddedb66267d504d688a7c0dae67649"
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
            url: "https://dl.cloudsmith.io/bFQP6zY5UO2hAJGx/anon/anon-sdk/raw/names/AnonKit.xcframework/versions/\(version)/AnonKit.xcframework.zip",
            checksum: checksum
        ),
        .testTarget(
            name: "AnonKitPkgTests",
            dependencies: ["AnonKit"]),
    ]
)
