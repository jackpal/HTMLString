// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "HTMLString",
    platforms: [
      .iOS(.v16),.tvOS(.v16),.watchOS(.v8),.macOS(.v12)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "HTMLString",
            targets: ["HTMLString"]),
    ],
    dependencies: [
        .package(url: "https://github.com/scinfu/SwiftSoup.git", from: "2.5.3"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "HTMLString",
            dependencies: ["SwiftSoup"]),
        .testTarget(
            name: "HTMLStringTests",
            dependencies: ["HTMLString"]),
    ]
)
