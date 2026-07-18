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
            url: "https://github.com/rich-smartlynx/lynxapi-framework/releases/download/1.1.2/lynxapi.xcframework.zip",
            checksum: "76e084aec33ca6d36ce2990a3bd01e5e1a4eb41805fcf6f2f025f97061b58a10"
        ),
    ]
)
