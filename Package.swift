// swift-tools-version: 5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

//BinaryWithDep
import PackageDescription

let package = Package(
    name: "DocumentReaderSDK",
    products: [
        .library(name: "DocumentReaderSDK", targets: ["DocumentReaderTarget", "Full"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Darkzwer/CommonDepSwift.git", .exactItem("7.1.379")),
    ],
    targets: [
        .target(name: "Full", dependencies: [
            .product(name: "RegulaCommonSwift", package: "CommonDepSwift")
        ]),
        .binaryTarget(
            name: "DocumentReaderTarget",
            url: "https://pods.regulaforensics.com/DocumentReader/7.1.3379/DocumentReader-7.1.3379.zip",
            checksum: "24f3ab840a064180a0e72ad3e22bd260e2595ecd8a4ec20b2e32b01965a9f976"),
        .testTarget(
            name: "FullTests",
            dependencies: ["Full"]),
    ]
)
