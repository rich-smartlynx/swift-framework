// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: "lynxapi",
    products: [
        .library(
            name: "lynxapi",
            targets: ["lynxapi"]),
    ],
    targets: [
        .binaryTarget(
            name: "lynxapi",
            url: "https://github.com/rich-smartlynx/lynxapi-framework/releases/download/1.1.1/lynxapi.xcframework.zip",
            checksum: "bfaf433411be2de5ddb051d9e09d9c4c5d63164afa20d4dd4590ebe3b8ea5031"
        ),
    ]
)
