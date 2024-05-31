// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Barcode",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Full",
            targets: ["Full"]),
        //.library(
        //    name: "Barcode",
        //    targets: ["Barcode"]),
        .library(
            name: "FullAuthRFID",
            targets: ["FullAuthRFID"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/Darkzwer/FullCore", branch: "main"),
        //.package(url: "https://github.com/Darkzwer/BarcodeCore", branch: "main"),
        .package(url: "https://github.com/Darkzwer/FullAuthRFIDCore", branch: "main"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "Full",
            dependencies: ["FullCore"]),
        //.target(
        //    name: "Barcode",
        //    dependencies: ["BarcodeCore"]),
        .target(
            name: "FullAuthRFID",
            dependencies: ["FullAuthRFIDCore"]),
        //.testTarget(
        //    name: "FullTests",
        //    dependencies: ["Full"]),
    ]
)
