// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Boomerang",
    platforms: [
      .iOS(.v11), .tvOS(.v11)
    ],
  
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(name: "Boomerang", targets: ["Boomerang"]),
        .library(name: "UIKitBoomerang", targets: ["UIKitBoomerang"]),
        .library(name: "RxBoomerang", targets: ["RxBoomerang"]),
        .library(name: "CombineBoomerang", targets: ["CombineBoomerang"]),
        .library(name: "SwiftUIBoomerang", targets: ["SwiftUIBoomerang"])
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/RxSwiftCommunity/RxDataSources.git", .upToNextMajor(from: "4.0.0")),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "Boomerang",
            dependencies: [], path: "Sources/Core"),
        .target(
        name: "UIKitBoomerang",
        dependencies: ["Boomerang"], path: "Sources/UIKit"),
        .target(
        name: "RxBoomerang",
        dependencies: ["Boomerang","RxSwift","RxCocoa","RxDataSources"], path: "Sources/Rx"),
        .target(
        name: "CombineBoomerang",
        dependencies: ["Boomerang"], path: "Sources/Combine"),
        .target(
        name: "SwiftUIBoomerang",
        dependencies: ["Boomerang"], path: "Sources/SwiftUI")
    ],
    swiftLanguageVersions: [.v5]
)