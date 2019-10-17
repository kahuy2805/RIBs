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
        .package(url: "ssh://git@code.hubcba.com:7999/~huy.kieu/shared_packages.git", from: "0.0.1"),
    ],
    targets: [
        .target(
            name: "RIBs",
            dependencies: ["SharedPackage"],
            path: "./ios/RIBs")
    ]
)
