// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "ElapsedRealtime",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "ElapsedRealtime",
            targets: ["ElapsedRealtimePlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", branch: "main")
    ],
    targets: [
        .target(
            name: "ElapsedRealtimePlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/ElapsedRealtimePlugin"),
        .testTarget(
            name: "ElapsedRealtimePluginTests",
            dependencies: ["ElapsedRealtimePlugin"],
            path: "ios/Tests/ElapsedRealtimePluginTests")
    ]
)