// swift-tools-version: 5.9
import PackageDescription

// 通用 linker settings
let commonLinkerSettings: [LinkerSetting] = [
    .linkedFramework("AVFoundation"),
    .linkedFramework("Accelerate"),
    .linkedFramework("AssetsLibrary"),
    .linkedFramework("CoreML"),
    .linkedFramework("JavaScriptCore"),
    .linkedFramework("CoreFoundation"),
    .linkedFramework("MetalPerformanceShaders"),
    .linkedFramework("CoreTelephony"),
    .linkedFramework("VideoToolbox"),
    .linkedLibrary("z"),
    .linkedLibrary("resolv"),
    .linkedLibrary("iconv"),
    .linkedLibrary("stdc++"),
    .linkedLibrary("c++"),
    .linkedLibrary("sqlite3"),
]

let package = Package(
    name: "TencentEffect_SwiftPM",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        // A 系列
        .library(name: "TencentEffect_A1-02", targets: ["TencentEffect_A1-02"]),
        .library(name: "TencentEffect_A1-02_nobundle", targets: ["TencentEffect_A1-02_nobundle"]),
        .library(name: "TencentEffect_A1-02_nolibpag", targets: ["TencentEffect_A1-02_nolibpag"]),
        .library(name: "TencentEffect_A1-03", targets: ["TencentEffect_A1-03"]),
        .library(name: "TencentEffect_A1-03_nobundle", targets: ["TencentEffect_A1-03_nobundle"]),
        .library(name: "TencentEffect_A1-03_nolibpag", targets: ["TencentEffect_A1-03_nolibpag"]),
        .library(name: "TencentEffect_A1-04", targets: ["TencentEffect_A1-04"]),
        .library(name: "TencentEffect_A1-04_nobundle", targets: ["TencentEffect_A1-04_nobundle"]),
        .library(name: "TencentEffect_A1-04_nolibpag", targets: ["TencentEffect_A1-04_nolibpag"]),
        .library(name: "TencentEffect_A1-05", targets: ["TencentEffect_A1-05"]),
        .library(name: "TencentEffect_A1-05_nobundle", targets: ["TencentEffect_A1-05_nobundle"]),
        .library(name: "TencentEffect_A1-05_nolibpag", targets: ["TencentEffect_A1-05_nolibpag"]),
        .library(name: "TencentEffect_A1-06", targets: ["TencentEffect_A1-06"]),
        .library(name: "TencentEffect_A1-06_nobundle", targets: ["TencentEffect_A1-06_nobundle"]),
        .library(name: "TencentEffect_A1-06_nolibpag", targets: ["TencentEffect_A1-06_nolibpag"]),
        // S 系列
        .library(name: "TencentEffect_S1-01", targets: ["TencentEffect_S1-01"]),
        .library(name: "TencentEffect_S1-01_nobundle", targets: ["TencentEffect_S1-01_nobundle"]),
        .library(name: "TencentEffect_S1-01_nolibpag", targets: ["TencentEffect_S1-01_nolibpag"]),
        .library(name: "TencentEffect_S1-02", targets: ["TencentEffect_S1-02"]),
        .library(name: "TencentEffect_S1-02_nobundle", targets: ["TencentEffect_S1-02_nobundle"]),
        .library(name: "TencentEffect_S1-02_nolibpag", targets: ["TencentEffect_S1-02_nolibpag"]),
        .library(name: "TencentEffect_S1-03", targets: ["TencentEffect_S1-03"]),
        .library(name: "TencentEffect_S1-03_nobundle", targets: ["TencentEffect_S1-03_nobundle"]),
        .library(name: "TencentEffect_S1-03_nolibpag", targets: ["TencentEffect_S1-03_nolibpag"]),
        .library(name: "TencentEffect_S1-04", targets: ["TencentEffect_S1-04"]),
        .library(name: "TencentEffect_S1-04_nobundle", targets: ["TencentEffect_S1-04_nobundle"]),
        .library(name: "TencentEffect_S1-04_nolibpag", targets: ["TencentEffect_S1-04_nolibpag"]),
        .library(name: "TencentEffect_S1-05", targets: ["TencentEffect_S1-05"]),
        .library(name: "TencentEffect_S1-05_nobundle", targets: ["TencentEffect_S1-05_nobundle"]),
        .library(name: "TencentEffect_S1-05_nolibpag", targets: ["TencentEffect_S1-05_nolibpag"]),
        .library(name: "TencentEffect_S1-06", targets: ["TencentEffect_S1-06"]),
        .library(name: "TencentEffect_S1-06_nobundle", targets: ["TencentEffect_S1-06_nobundle"]),
        .library(name: "TencentEffect_S1-06_nolibpag", targets: ["TencentEffect_S1-06_nolibpag"]),
        .library(name: "TencentEffect_S1-07", targets: ["TencentEffect_S1-07"]),
        .library(name: "TencentEffect_S1-07_nobundle", targets: ["TencentEffect_S1-07_nobundle"]),
        .library(name: "TencentEffect_S1-07_nolibpag", targets: ["TencentEffect_S1-07_nolibpag"]),
        // X 系列
        .library(name: "TencentEffect_X1-01", targets: ["TencentEffect_X1-01"]),
        .library(name: "TencentEffect_X1-01_nobundle", targets: ["TencentEffect_X1-01_nobundle"]),
        .library(name: "TencentEffect_X1-01_nolibpag", targets: ["TencentEffect_X1-01_nolibpag"]),
        .library(name: "TencentEffect_X1-02", targets: ["TencentEffect_X1-02"]),
        .library(name: "TencentEffect_X1-02_nobundle", targets: ["TencentEffect_X1-02_nobundle"]),
        .library(name: "TencentEffect_X1-02_nolibpag", targets: ["TencentEffect_X1-02_nolibpag"]),
        // All
        .library(name: "TencentEffect_All", targets: ["TencentEffect_All"]),
        .library(name: "TencentEffect_All_nobundle", targets: ["TencentEffect_All_nobundle"]),
        .library(name: "TencentEffect_All_nolibpag", targets: ["TencentEffect_All_nolibpag"]),
    ],
    
    targets: [
        // ============ Binary Targets ============
        .binaryTarget(name: "XMagic", url: "https://mediacloud-76607.gzc.vod.tencent-cloud.com/TencentEffect/iOS/SwiftPM/4.4.0.5/Dynamic/XMagic.xcframework.zip", checksum: "636cd811f8817ef3935e6b952300a48fa466e2ccc5096f61345e432ddc057c44"),
        .binaryTarget(name: "YTCommonXMagic", url: "https://mediacloud-76607.gzc.vod.tencent-cloud.com/TencentEffect/iOS/SwiftPM/4.4.0.5/YTCommonXMagic.xcframework.zip", checksum: "86d99fa1479cd4d0824901df9d001d09c5379dfd93be5844c83f891cd859c03d"),
        .binaryTarget(name: "libpag", url: "https://mediacloud-76607.gzc.vod.tencent-cloud.com/TencentEffect/iOS/SwiftPM/4.4.0.5/libpag.xcframework.zip", checksum: "2e5decd1a805b5221f2414ba47328b2ad730f376f5673065ab6485260b11324a"),
        .binaryTarget(name: "TECodec", url: "https://mediacloud-76607.gzc.vod.tencent-cloud.com/TencentEffect/iOS/SwiftPM/4.4.0.5/TECodec.xcframework.zip", checksum: "1a16b9728ff7f7225c48203a6acea9d42766d050492a9162594240a1fda9089c"),
        // 资源包 - Basic (LightCore.bundle)
        .binaryTarget(name: "XMagicResources_Basic", url: "https://mediacloud-76607.gzc.vod.tencent-cloud.com/TencentEffect/iOS/SwiftPM/4.4.0.5/Resources/Basic/XMagicResources.xcframework.zip", checksum: "50b943022975a125396c53a8b43d395a74179ca277bd0a5c1df804c437094e9e"),
        // 资源包 - Standard (LightCore + LightSegmentPlugin + LightHandPlugin)
        .binaryTarget(name: "XMagicResources_Standard", url: "https://mediacloud-76607.gzc.vod.tencent-cloud.com/TencentEffect/iOS/SwiftPM/4.4.0.5/Resources/Standard/XMagicResources.xcframework.zip", checksum: "a62dbd84c632bf2ae7dc7bf82501a8ce5bea5edb63b11b96aa86e0c62c047bb1"),
        // 资源包 - All (全部 5 个 bundle)
        .binaryTarget(name: "XMagicResources_All", url: "https://mediacloud-76607.gzc.vod.tencent-cloud.com/TencentEffect/iOS/SwiftPM/4.4.0.5/Resources/All/XMagicResources.xcframework.zip", checksum: "ecfa9aafc5d4e4227bf12c16b37f6b38c3e23bc6363df23bf664358f95096cb4"),
        
        // ============ A1-02 (Basic 资源) ============
        .target(name: "TencentEffect_A1-02", dependencies: ["XMagic", "YTCommonXMagic", "libpag", "TECodec", "XMagicResources_Basic"], path: "Sources/TencentEffect_A1-02", sources: ["TencentEffect.swift"], linkerSettings: commonLinkerSettings),
        .target(name: "TencentEffect_A1-02_nobundle", dependencies: ["XMagic", "YTCommonXMagic", "libpag", "TECodec"], path: "Sources/TencentEffect_A1-02_nobundle", sources: ["TencentEffect.swift"], linkerSettings: commonLinkerSettings),
        .target(name: "TencentEffect_A1-02_nolibpag", dependencies: ["XMagic", "YTCommonXMagic", "TECodec", "XMagicResources_Basic"], path: "Sources/TencentEffect_A1-02_nolibpag", sources: ["TencentEffect.swift"], linkerSettings: commonLinkerSettings),
        
        // ============ A1-03 (Basic 资源) ============
        .target(name: "TencentEffect_A1-03", dependencies: ["XMagic", "YTCommonXMagic", "libpag", "TECodec", "XMagicResources_Basic"], path: "Sources/TencentEffect_A1-03", sources: ["TencentEffect.swift"], linkerSettings: commonLinkerSettings),
        .target(name: "TencentEffect_A1-03_nobundle", dependencies: ["XMagic", "YTCommonXMagic", "libpag", "TECodec"], path: "Sources/TencentEffect_A1-03_nobundle", sources: ["TencentEffect.swift"], linkerSettings: commonLinkerSettings),
        .target(name: "TencentEffect_A1-03_nolibpag", dependencies: ["XMagic", "YTCommonXMagic", "TECodec", "XMagicResources_Basic"], path: "Sources/TencentEffect_A1-03_nolibpag", sources: ["TencentEffect.swift"], linkerSettings: commonLinkerSettings),
        
        // ============ A1-04 (Standard 资源) ============
        .target(name: "TencentEffect_A1-04", dependencies: ["XMagic", "YTCommonXMagic", "libpag", "TECodec", "XMagicResources_Standard"], path: "Sources/TencentEffect_A1-04", sources: ["TencentEffect.swift"], linkerSettings: commonLinkerSettings),
        .target(name: "TencentEffect_A1-04_nobundle", dependencies: ["XMagic", "YTCommonXMagic", "libpag", "TECodec"], path: "Sources/TencentEffect_A1-04_nobundle", sources: ["TencentEffect.swift"], linkerSettings: commonLinkerSettings),
        .target(name: "TencentEffect_A1-04_nolibpag", dependencies: ["XMagic", "YTCommonXMagic", "TECodec", "XMagicResources_Standard"], path: "Sources/TencentEffect_A1-04_nolibpag", sources: ["TencentEffect.swift"], linkerSettings: commonLinkerSettings),
        
        // ============ A1-05 (Standard 资源) ============
        .target(name: "TencentEffect_A1-05", dependencies: ["XMagic", "YTCommonXMagic", "libpag", "TECodec", "XMagicResources_Standard"], path: "Sources/TencentEffect_A1-05", sources: ["TencentEffect.swift"], linkerSettings: commonLinkerSettings),
        .target(name: "TencentEffect_A1-05_nobundle", dependencies: ["XMagic", "YTCommonXMagic", "libpag", "TECodec"], path: "Sources/TencentEffect_A1-05_nobundle", sources: ["TencentEffect.swift"], linkerSettings: commonLinkerSettings),
        .target(name: "TencentEffect_A1-05_nolibpag", dependencies: ["XMagic", "YTCommonXMagic", "TECodec", "XMagicResources_Standard"], path: "Sources/TencentEffect_A1-05_nolibpag", sources: ["TencentEffect.swift"], linkerSettings: commonLinkerSettings),
        
        // ============ A1-06 (Standard 资源) ============
        .target(name: "TencentEffect_A1-06", dependencies: ["XMagic", "YTCommonXMagic", "libpag", "TECodec", "XMagicResources_Standard"], path: "Sources/TencentEffect_A1-06", sources: ["TencentEffect.swift"], linkerSettings: commonLinkerSettings),
        .target(name: "TencentEffect_A1-06_nobundle", dependencies: ["XMagic", "YTCommonXMagic", "libpag", "TECodec"], path: "Sources/TencentEffect_A1-06_nobundle", sources: ["TencentEffect.swift"], linkerSettings: commonLinkerSettings),
        .target(name: "TencentEffect_A1-06_nolibpag", dependencies: ["XMagic", "YTCommonXMagic", "TECodec", "XMagicResources_Standard"], path: "Sources/TencentEffect_A1-06_nolibpag", sources: ["TencentEffect.swift"], linkerSettings: commonLinkerSettings),
        
        // ============ S1-01 (All 资源) ============
        .target(name: "TencentEffect_S1-01", dependencies: ["XMagic", "YTCommonXMagic", "libpag", "TECodec", "XMagicResources_All"], path: "Sources/TencentEffect_S1-01", sources: ["TencentEffect.swift"], linkerSettings: commonLinkerSettings),
        .target(name: "TencentEffect_S1-01_nobundle", dependencies: ["XMagic", "YTCommonXMagic", "libpag", "TECodec"], path: "Sources/TencentEffect_S1-01_nobundle", sources: ["TencentEffect.swift"], linkerSettings: commonLinkerSettings),
        .target(name: "TencentEffect_S1-01_nolibpag", dependencies: ["XMagic", "YTCommonXMagic", "TECodec", "XMagicResources_All"], path: "Sources/TencentEffect_S1-01_nolibpag", sources: ["TencentEffect.swift"], linkerSettings: commonLinkerSettings),
        
        // ============ S1-02 (All 资源) ============
        .target(name: "TencentEffect_S1-02", dependencies: ["XMagic", "YTCommonXMagic", "libpag", "TECodec", "XMagicResources_All"], path: "Sources/TencentEffect_S1-02", sources: ["TencentEffect.swift"], linkerSettings: commonLinkerSettings),
        .target(name: "TencentEffect_S1-02_nobundle", dependencies: ["XMagic", "YTCommonXMagic", "libpag", "TECodec"], path: "Sources/TencentEffect_S1-02_nobundle", sources: ["TencentEffect.swift"], linkerSettings: commonLinkerSettings),
        .target(name: "TencentEffect_S1-02_nolibpag", dependencies: ["XMagic", "YTCommonXMagic", "TECodec", "XMagicResources_All"], path: "Sources/TencentEffect_S1-02_nolibpag", sources: ["TencentEffect.swift"], linkerSettings: commonLinkerSettings),
        
        // ============ S1-03 (All 资源) ============
        .target(name: "TencentEffect_S1-03", dependencies: ["XMagic", "YTCommonXMagic", "libpag", "TECodec", "XMagicResources_All"], path: "Sources/TencentEffect_S1-03", sources: ["TencentEffect.swift"], linkerSettings: commonLinkerSettings),
        .target(name: "TencentEffect_S1-03_nobundle", dependencies: ["XMagic", "YTCommonXMagic", "libpag", "TECodec"], path: "Sources/TencentEffect_S1-03_nobundle", sources: ["TencentEffect.swift"], linkerSettings: commonLinkerSettings),
        .target(name: "TencentEffect_S1-03_nolibpag", dependencies: ["XMagic", "YTCommonXMagic", "TECodec", "XMagicResources_All"], path: "Sources/TencentEffect_S1-03_nolibpag", sources: ["TencentEffect.swift"], linkerSettings: commonLinkerSettings),
        
        // ============ S1-04 (All 资源) ============
        .target(name: "TencentEffect_S1-04", dependencies: ["XMagic", "YTCommonXMagic", "libpag", "TECodec", "XMagicResources_All"], path: "Sources/TencentEffect_S1-04", sources: ["TencentEffect.swift"], linkerSettings: commonLinkerSettings),
        .target(name: "TencentEffect_S1-04_nobundle", dependencies: ["XMagic", "YTCommonXMagic", "libpag", "TECodec"], path: "Sources/TencentEffect_S1-04_nobundle", sources: ["TencentEffect.swift"], linkerSettings: commonLinkerSettings),
        .target(name: "TencentEffect_S1-04_nolibpag", dependencies: ["XMagic", "YTCommonXMagic", "TECodec", "XMagicResources_All"], path: "Sources/TencentEffect_S1-04_nolibpag", sources: ["TencentEffect.swift"], linkerSettings: commonLinkerSettings),
        
        // ============ S1-05 (All 资源) ============
        .target(name: "TencentEffect_S1-05", dependencies: ["XMagic", "YTCommonXMagic", "libpag", "TECodec", "XMagicResources_All"], path: "Sources/TencentEffect_S1-05", sources: ["TencentEffect.swift"], linkerSettings: commonLinkerSettings),
        .target(name: "TencentEffect_S1-05_nobundle", dependencies: ["XMagic", "YTCommonXMagic", "libpag", "TECodec"], path: "Sources/TencentEffect_S1-05_nobundle", sources: ["TencentEffect.swift"], linkerSettings: commonLinkerSettings),
        .target(name: "TencentEffect_S1-05_nolibpag", dependencies: ["XMagic", "YTCommonXMagic", "TECodec", "XMagicResources_All"], path: "Sources/TencentEffect_S1-05_nolibpag", sources: ["TencentEffect.swift"], linkerSettings: commonLinkerSettings),
        
        // ============ S1-06 (All 资源) ============
        .target(name: "TencentEffect_S1-06", dependencies: ["XMagic", "YTCommonXMagic", "libpag", "TECodec", "XMagicResources_All"], path: "Sources/TencentEffect_S1-06", sources: ["TencentEffect.swift"], linkerSettings: commonLinkerSettings),
        .target(name: "TencentEffect_S1-06_nobundle", dependencies: ["XMagic", "YTCommonXMagic", "libpag", "TECodec"], path: "Sources/TencentEffect_S1-06_nobundle", sources: ["TencentEffect.swift"], linkerSettings: commonLinkerSettings),
        .target(name: "TencentEffect_S1-06_nolibpag", dependencies: ["XMagic", "YTCommonXMagic", "TECodec", "XMagicResources_All"], path: "Sources/TencentEffect_S1-06_nolibpag", sources: ["TencentEffect.swift"], linkerSettings: commonLinkerSettings),
        
        // ============ S1-07 (All 资源) ============
        .target(name: "TencentEffect_S1-07", dependencies: ["XMagic", "YTCommonXMagic", "libpag", "TECodec", "XMagicResources_All"], path: "Sources/TencentEffect_S1-07", sources: ["TencentEffect.swift"], linkerSettings: commonLinkerSettings),
        .target(name: "TencentEffect_S1-07_nobundle", dependencies: ["XMagic", "YTCommonXMagic", "libpag", "TECodec"], path: "Sources/TencentEffect_S1-07_nobundle", sources: ["TencentEffect.swift"], linkerSettings: commonLinkerSettings),
        .target(name: "TencentEffect_S1-07_nolibpag", dependencies: ["XMagic", "YTCommonXMagic", "TECodec", "XMagicResources_All"], path: "Sources/TencentEffect_S1-07_nolibpag", sources: ["TencentEffect.swift"], linkerSettings: commonLinkerSettings),
        
        // ============ X1-01 (Standard 资源) ============
        .target(name: "TencentEffect_X1-01", dependencies: ["XMagic", "YTCommonXMagic", "libpag", "TECodec", "XMagicResources_Standard"], path: "Sources/TencentEffect_X1-01", sources: ["TencentEffect.swift"], linkerSettings: commonLinkerSettings),
        .target(name: "TencentEffect_X1-01_nobundle", dependencies: ["XMagic", "YTCommonXMagic", "libpag", "TECodec"], path: "Sources/TencentEffect_X1-01_nobundle", sources: ["TencentEffect.swift"], linkerSettings: commonLinkerSettings),
        .target(name: "TencentEffect_X1-01_nolibpag", dependencies: ["XMagic", "YTCommonXMagic", "TECodec", "XMagicResources_Standard"], path: "Sources/TencentEffect_X1-01_nolibpag", sources: ["TencentEffect.swift"], linkerSettings: commonLinkerSettings),
        
        // ============ X1-02 (Basic 资源) ============
        .target(name: "TencentEffect_X1-02", dependencies: ["XMagic", "YTCommonXMagic", "libpag", "TECodec", "XMagicResources_Basic"], path: "Sources/TencentEffect_X1-02", sources: ["TencentEffect.swift"], linkerSettings: commonLinkerSettings),
        .target(name: "TencentEffect_X1-02_nobundle", dependencies: ["XMagic", "YTCommonXMagic", "libpag", "TECodec"], path: "Sources/TencentEffect_X1-02_nobundle", sources: ["TencentEffect.swift"], linkerSettings: commonLinkerSettings),
        .target(name: "TencentEffect_X1-02_nolibpag", dependencies: ["XMagic", "YTCommonXMagic", "TECodec", "XMagicResources_Basic"], path: "Sources/TencentEffect_X1-02_nolibpag", sources: ["TencentEffect.swift"], linkerSettings: commonLinkerSettings),
        
        // ============ All (All 资源) ============
        .target(name: "TencentEffect_All", dependencies: ["XMagic", "YTCommonXMagic", "libpag", "TECodec", "XMagicResources_All"], path: "Sources/TencentEffect_All", sources: ["TencentEffect.swift"], linkerSettings: commonLinkerSettings),
        .target(name: "TencentEffect_All_nobundle", dependencies: ["XMagic", "YTCommonXMagic", "libpag", "TECodec"], path: "Sources/TencentEffect_All_nobundle", sources: ["TencentEffect.swift"], linkerSettings: commonLinkerSettings),
        .target(name: "TencentEffect_All_nolibpag", dependencies: ["XMagic", "YTCommonXMagic", "TECodec", "XMagicResources_All"], path: "Sources/TencentEffect_All_nolibpag", sources: ["TencentEffect.swift"], linkerSettings: commonLinkerSettings),
        

    ]
)
