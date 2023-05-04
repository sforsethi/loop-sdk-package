// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "loop-sdk-package",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "loop-sdk-package",
            targets: ["loop-sdk-package", "Loop-SDK"]),
    ],
        // Dependencies declare other packages that this package depends on.
    dependencies: [
            .package(url: "https://github.com/Alamofire/Alamofire.git", from: "5.6.4"),
            .package(url: "https://github.com/airbnb/lottie-ios.git", from: "3.5.0"),
            .package(url: "https://github.com/slackhq/PanModal.git", from: "1.2.7"),
            .package(url: "https://github.com/shu223/Pulsator.git", from: "0.6.0"),
            .package(url: "https://github.com/WorldDownTown/RangeSeekSlider.git", from: "1.8.0"),
            .package(url: "https://github.com/pgorzelany/ScratchCardView.git", from: "1.7.0"),
            .package(url: "https://github.com/SDWebImage/SDWebImage.git", from: "5.15.4"),
            .package(url: "https://github.com/sh-khashimov/SwiftFortuneWheel.git", from: "1.4.3"),
    ]
        
    ,
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
            name: "Loop-SDK",
            path: "./Sources/Loop-SDK.xcframework"),
        .target(
            name: "loop-sdk-package",
            dependencies: ["Loop-SDK"]),
        .testTarget(
            name: "loop-sdk-packageTests",
            dependencies: ["loop-sdk-package"]),
    ]
)
