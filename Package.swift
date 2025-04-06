// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftGifSPM",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "SwiftGifSPM",
            targets: ["SwiftGifSPM"]
        ),
    ],
    targets: [
        .target(
            name: "SwiftGifSPM",
            path: "Sources"
        ),
        .testTarget(
            name: "SwiftGifSPMTests",
            dependencies: ["SwiftGifSPM"],
            resources: [
                .process("Resources")
            ]
        ),
    ]
)
