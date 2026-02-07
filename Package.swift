// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: "Swift-LynxAPI",
    products: [
        .library(
            name: "Swift-LynxAPI",
            targets: ["lynxapi"]),
    ],
    targets: [
        .binaryTarget(
            name: "lynxapi",
            url: "https://github.com/rich-smartlynx/swift-framework/raw/main/lynxapi.xcframework.zip",
            checksum: "9da1df6dcabdec4746a094c4011b0e1df9469c8dd312a892dce55376db8e713f"
        ),
    ]
)
