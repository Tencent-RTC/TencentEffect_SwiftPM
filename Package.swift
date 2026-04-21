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
        // All & Edit
        .library(name: "TencentEffect_All", targets: ["TencentEffect_All"]),
        .library(name: "TencentEffect_All_nobundle", targets: ["TencentEffect_All_nobundle"]),
        .library(name: "TencentEffect_All_nolibpag", targets: ["TencentEffect_All_nolibpag"]),
        .library(name: "TencentEffect_Edit", targets: ["TencentEffect_Edit"]),
        .library(name: "TencentEffect_Edit_nobundle", targets: ["TencentEffect_Edit_nobundle"]),
        .library(name: "TencentEffect_Edit_nolibpag", targets: ["TencentEffect_Edit_nolibpag"]),
    ],
    
    targets: [
        // ============ Binary Targets ============
        .binaryTarget(name: "XMagic", url: "https://mediacloud-76607.gzc.vod.tencent-cloud.com/TencentEffect/iOS/SwiftPM/4.2.0.21/XMagic.xcframework.zip", checksum: "356568d357e4a552a2b1315570f42d7d72c6883ba367b38e9339d386e856e406"),
        .binaryTarget(name: "YTCommonXMagic", url: "https://mediacloud-76607.gzc.vod.tencent-cloud.com/TencentEffect/iOS/SwiftPM/4.2.0.21/YTCommonXMagic.xcframework.zip", checksum: "aa58a7ee8bfe76cab13575d62d169894492b0bc56cab947d46ce73c6beff81fb"),
        .binaryTarget(name: "libpag", url: "https://mediacloud-76607.gzc.vod.tencent-cloud.com/TencentEffect/iOS/SwiftPM/4.2.0.21/libpag.xcframework.zip", checksum: "ae9f882a28e679142dd30398049b64181168c8d944a956735f011350e9e79d02"),
        .binaryTarget(name: "TECodec", url: "https://mediacloud-76607.gzc.vod.tencent-cloud.com/TencentEffect/iOS/SwiftPM/4.2.0.21/TECodec.xcframework.zip", checksum: "e66ddf73d68cc5ffcc94ebaa7e1aef9079d7db51769134663d9458bb1639f042"),
        // 资源包 - Basic (LightCore.bundle)
        .binaryTarget(name: "XMagicResources_Basic", url: "https://mediacloud-76607.gzc.vod.tencent-cloud.com/TencentEffect/iOS/SwiftPM/4.2.0.21/Resources/Basic/XMagicResources.xcframework.zip", checksum: "05f6706ce23227777abd1c4899e664eaefd3e999624b1da21d3c1c431cc15609"),
        // 资源包 - Standard (LightCore + LightSegmentPlugin + LightHandPlugin)
        .binaryTarget(name: "XMagicResources_Standard", url: "https://mediacloud-76607.gzc.vod.tencent-cloud.com/TencentEffect/iOS/SwiftPM/4.2.0.21/Resources/Standard/XMagicResources.xcframework.zip", checksum: "cba44167997b7f78f2c532a0de44f05cddb9fbe69e094cae427be6f85026f089"),
        // 资源包 - All (全部 5 个 bundle)
        .binaryTarget(name: "XMagicResources_All", url: "https://mediacloud-76607.gzc.vod.tencent-cloud.com/TencentEffect/iOS/SwiftPM/4.2.0.21/Resources/All/XMagicResources.xcframework.zip", checksum: "864684698f3d71bcb02866357c1599a4b11320fda308278873c697930771bd1f"),
        
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
        
        // ============ Edit (All 资源) ============
        .target(name: "TencentEffect_Edit", dependencies: ["XMagic", "YTCommonXMagic", "libpag", "TECodec", "XMagicResources_All"], path: "Sources/TencentEffect_Edit", sources: ["TencentEffect.swift"], linkerSettings: commonLinkerSettings),
        .target(name: "TencentEffect_Edit_nobundle", dependencies: ["XMagic", "YTCommonXMagic", "libpag", "TECodec"], path: "Sources/TencentEffect_Edit_nobundle", sources: ["TencentEffect.swift"], linkerSettings: commonLinkerSettings),
        .target(name: "TencentEffect_Edit_nolibpag", dependencies: ["XMagic", "YTCommonXMagic", "TECodec", "XMagicResources_All"], path: "Sources/TencentEffect_Edit_nolibpag", sources: ["TencentEffect.swift"], linkerSettings: commonLinkerSettings),
    ]
)
