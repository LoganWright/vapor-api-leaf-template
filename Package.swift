// swift-tools-version:#(swiftToolsVersion)
import PackageDescription

let package = Package(
    name: "#(packageName)",
    dependencies: [
        // vapor web framework
        .package(url: "https://github.com/vapor/vapor.git", from: "3.0.0"),
        #if(fluent.include) {
            .package(url: "https://github.com/vapor/fluent-#lowercased(fluent.db.name).git", from: "#(fluent.db.version")
        }
    ],
    targets: [
        .target(name: "App", dependencies: [
            "Vapor",
            #if(fluent.include) {
                "Fluent#(fluent.db.name)"
            }
        ]),
        .target(name: "Run", dependencies: ["App"]),
        .testTarget(name: "AppTests", dependencies: ["App"])
    ]
)
