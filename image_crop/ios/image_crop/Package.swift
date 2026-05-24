// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "image_crop",
    platforms: [
        .iOS("12.0")
    ],
    products: [
        .library(name: "image-crop", targets: ["image_crop"])
    ],
    dependencies: [],
    targets: [
        .target(
            name: "image_crop",
            path: "Sources/image_crop",
            publicHeadersPath: "include",
            linkerSettings: [
                .linkedFramework("Photos"),
                .linkedFramework("MobileCoreServices")
            ]
        )
    ]
)
