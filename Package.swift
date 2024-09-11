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
        .package(url: "https://github.com/apple/swift-collections", from: "1.1.2"),
    ],
    targets: [
        .target(
            name: "ExperimentalPackage",
            dependencies: [
                .product(name: "Collections", package: "swift-collections"),
            ]
        ),
        .testTarget(
            name: "ExperimentalPackageTests",
            dependencies: ["ExperimentalPackage"]
        ),
    ]
)
