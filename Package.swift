// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "DangerApp",
    platforms: [
        .macOS(.v12),
    ],
    dependencies: [
        .package(name: "danger-swift", url: "https://github.com/danger/swift", from: "3.17.1"),
        .package(name: "swiftlint", url: "https://github.com/realm/SwiftLint", from: "0.50.3")

    ],
    targets: [
        .target(
            name: "DangerApp",
            dependencies: [
                .product(name: "Danger", package: "danger-swift"),
                .product(name: "swiftlint", package: "SwiftLint")
            ]),
    ]
)