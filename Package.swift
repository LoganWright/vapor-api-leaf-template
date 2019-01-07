// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "VaporApp",
    dependencies: [#for(dependency in dependencies) {
        // #(dependency.comment)
        .package(url: #(dependency.gitUrl), from: #(dependency.version)),
    }],
    targets: [
        .target(name: "App", dependencies: [
            #for(dependency in dependencies) {#for(include in dependency.includes) {"#(include)",
            }}]),
        .target(name: "Run", dependencies: ["App"]),
        .testTarget(name: "AppTests", dependencies: ["App"])
    ]
)
