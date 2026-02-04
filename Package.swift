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
            checksum: "690f8a09c83905f6ebefce19e3499114b1d9665581544ea24b91f46facea2028"
        ),
    ]
)
