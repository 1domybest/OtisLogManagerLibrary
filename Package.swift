// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

// swift-tools-version: 5.7
import PackageDescription

let package = Package(
    name: "OtisLogManagerLibrary",
    platforms: [
        .iOS(.v13) // 지원하는 플랫폼과 버전
    ],
    products: [
        .library(
            name: "OtisLogManagerLibrary",
            targets: ["OtisLogManagerLibrary"]),
    ],
    dependencies: [
        // 필요한 의존성을 여기에 추가
    ],
    targets: [
        .target(
            name: "OtisLogManagerLibrary",
            dependencies: ["LogManager"], // XCFramework 의존성
            path: "Sources/OtisLogManagerLibrary" // 소스 코드 위치
        ),
        .binaryTarget(
            name: "LogManager", // XCFramework 이름
            path: "XCFrameworks/LogManager.xcframework" // XCFramework 경로
        )
    ]
)
