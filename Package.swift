// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "Localize_Swift",
    products: [
        .library(
            name: "Localize_Swift",
            targets: ["Localize_Swift"]),
    ],
    dependencies: [],
    targets: [
        #if os(macOS)
        .target(
            name: "Localize_Swift",
            path: "Sources", 
            exclude: ["Sources/UI"])
        #else
        .target(
            name: "Localize_Swift",
            path: "Sources")
        #endif
    ],
    swiftLanguageVersions: [.v5]
)
