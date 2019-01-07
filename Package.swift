// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "VaporApp",
    dependencies: [#for(dependency in dependencies) {
        // #(dependency.comment)
        #(dependency.package),
    }],
    targets: [
        .target(name: "App", dependencies: [#for(dependency in dependencies) {#for(include in dependency.includes) {"#(include)",
            }}]),
        .target(name: "Run", dependencies: ["App"]),
        .testTarget(name: "AppTests", dependencies: ["App"])
    ]
)
