// swift-tools-version:#(swiftToolsVersion)
import PackageDescription

let package = Package(
    name: "#(packageName)",
    dependencies: [
        // vapor web framework
        .package(url: "https://github.com/vapor/vapor.git", from: "3.0.0"),   
    ],
    targets: [
        .target(name: "App", dependencies: ["Vapor"]),
        .target(name: "Run", dependencies: ["App"]),
        .testTarget(name: "AppTests", dependencies: ["App"])
    ]
)
