// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AnonKitPkg",
    platforms: [
        .iOS(.v15),
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "AnonKit",
            targets: ["AnonKit"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        // Uncomment below for local development
        // .binaryTarget(name: "AnonKit", path: "./Sources/AnonKit.xcframework"),
        .binaryTarget(
            name: "AnonKit", 
            url: "https://dl.cloudsmith.io/bFQP6zY5UO2hAJGx/anon/anon-sdk/raw/names/AnonKit.xcframework/versions/0.1.0/AnonKit.xcframework.zip",
            checksum: "72265f0dd59e117b83d9d4f69d015ea6cb61df0f679843a227189b3465eff155"
        ),
        .testTarget(
            name: "AnonKitPkgTests",
            dependencies: ["AnonKit"]),
    ]
)
