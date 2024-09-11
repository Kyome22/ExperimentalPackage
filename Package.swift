// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "ExperimentalPackage",
    platforms: [
        .iOS(.v17)
    ],
    products: [
        .library(
            name: "ExperimentalPackage",
            targets: ["ExperimentalPackage"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-async-algorithms", from: "0.1.0"),
    ],
    targets: [
        .target(
            name: "ExperimentalPackage",
            dependencies: [
                .product(name: "AsyncAlgorithms", package: "swift-async-algorithms"),
            ]
        ),
        .testTarget(
            name: "ExperimentalPackageTests",
            dependencies: ["ExperimentalPackage"]
        ),
    ]
)
