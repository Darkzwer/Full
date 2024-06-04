// swift-tools-version: 5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

//BinaryWithDep
import PackageDescription

let package = Package(
    name: "Full",
    products: [
        .library(name: "Full", targets: ["Full", "DocumentReaderTarget"]),
    ],
    dependencies: [
        //.package(url: "https://github.com/Darkzwer/FullCore.git", .exact("7.3")),
        //.package(url: "https://github.com/Darkzwer/FullCore.git", from: ("7.3"))
        .package(url: "https://github.com/daltoniam/Starscream.git", from: "3.1.1")
    ],
    targets: [
        .target(name: "Full", dependencies: ["Starscream"], path: "Sources"),
        .binaryTarget(
                    name: "DocumentReaderTarget",
                    url: "https://pods.regulaforensics.com/DocumentReader/7.2.3545/DocumentReader-7.2.3545.zip",
                    checksum: "833b43dba07afceed74e14e8cd6c4c5fb41055da987164ee047f195f4577ab6d"),
        .testTarget(
            name: "FullTests",
            dependencies: ["Full"]),
    ]
)
