// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

//import Foundation

let package = Package(
    name: "RIBs",
    platforms: [.iOS(.v10)],
    products: [
        .library(
            name: "RIBs",
            targets: ["RIBs"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ReactiveX/RxSwift.git", from: "4.5.0"),
    ],
    targets: [
        .target(
            name: "RIBs",
            dependencies: ["RxSwift"],
            path: "./ios/RIBs")
    ]
)
