// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DotSdk",
    platforms: [.iOS(.v11)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "DotFaceLite",
            targets: ["DotFaceLite", "SamFace", "DotProtocolBuffers", "DotCore", "DotCamera", "DotFaceCommons", "DotCapture"]),
        .library(
            name: "DotDocument",
            targets: ["DotDocument", "sam", "DotCore", "DotCamera", "DotProtocolBuffers", "DotCapture"]),
        .library(
            name: "DotNfc",
            targets: ["DotNfc", "DotOpenSSL", "DotCore"]),
        .library(
            name: "DotFaceVerification",
            targets: ["DotFaceVerification", "DotFaceCore", "iface", "innoonnxruntime", "DotProtocolBuffers", "DotCore", "DotCamera", "DotFaceCommons", "DotCapture"]),
        .library(
            name: "DotFaceEyeGazeLiveness",
            targets: ["DotFaceEyeGazeLiveness", "DotFaceCore", "iface", "innoonnxruntime", "DotProtocolBuffers", "DotCore", "DotCamera", "DotFaceCommons", "DotCapture"]),
        .library(
            name: "DotFaceExpressionNeutral",
            targets: ["DotFaceExpressionNeutral", "DotFaceCore", "iface", "innoonnxruntime", "DotProtocolBuffers", "DotCore", "DotCamera", "DotFaceCommons", "DotCapture"]),
        .library(
            name: "DotFaceDetectionFast",
            targets: ["DotFaceDetectionFast", "DotFaceCore", "iface", "innoonnxruntime", "DotProtocolBuffers", "DotCore", "DotCamera", "DotFaceCommons", "DotCapture"]),
        .library(
            name: "DotFaceBackgroundUniformity",
            targets: ["DotFaceBackgroundUniformity", "DotFaceCore", "iface", "innoonnxruntime", "DotProtocolBuffers", "DotCore", "DotCamera", "DotFaceCommons", "DotCapture"]),
        .library(
            name: "DotFaceDetectionBalanced",
            targets: ["DotFaceDetectionBalanced", "DotFaceCore", "iface", "innoonnxruntime", "DotProtocolBuffers", "DotCore", "DotCamera", "DotFaceCommons", "DotCapture"]),
        .library(
            name: "DotFacePassiveLiveness",
            targets: ["DotFacePassiveLiveness", "DotFaceCore", "iface", "innoonnxruntime", "DotProtocolBuffers", "DotCore", "DotCamera", "DotFaceCommons", "DotCapture"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(name: "sam", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/sam/2.35.2/Sam.zip", checksum: "960bae5c778c4776f85f14e04738decb43addef2636c35acb2448e5cf892cb53"),
        .binaryTarget(name: "iface", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/iface/5.1.1/IFace.zip", checksum: "f301283d9323db0fc8d6e7a15ffdf3853f59f8e079ba238a73b459bf556deeb6"),
        .binaryTarget(name: "innoonnxruntime", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/onnx/2.1.1/Onnx.zip", checksum: "6fd0929999a977b36e09728c482c0b95a173edc71e1f262be5ae101609bdc9cf"),
        .binaryTarget(name: "DotProtocolBuffers", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-protobuf/1.5.0/DotProtocolBuffers.zip", checksum: "9b87a81bec83778e1238b556c7c5f94521f9a4fd16c18c6965283a4758f93229"),
        .binaryTarget(name: "DotOpenSSL", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-openssl/1.2.0/DotOpenSSL.zip", checksum: "aeaaf5e50d961e81b74cc9209501dd347a7f7ebf1d83643844685c073fd441ac"),
        .binaryTarget(name: "SamFace", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/sam-face/1.35.2/SamFace.zip", checksum: "269be21d3f5dd3251ae71e95cda9db4763efb2adc0b745f21bfabd0b49255d03"),
        .binaryTarget(name: "DotCore", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-core/7.4.1/DotCore.zip", checksum: "abba19dc960e7b39775fd56c5c6872b46dc274263ac4cf272f267cb868d6148e"),
        .binaryTarget(name: "DotCapture", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-capture/7.4.1/DotCapture.zip", checksum: "4e78d57d964d630328d7a2645e24e3372753b572ddf4ab56038d3710488bd1eb"),
        .binaryTarget(name: "DotCamera", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-camera/7.4.1/DotCamera.zip", checksum: "ed12bcb43724eb964f7ba10217f8fb67a5113fcb02ee3f4b1969f950eee5ef4a"),
        .binaryTarget(name: "DotFaceCommons", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-commons/7.4.1/DotFaceCommons.zip", checksum: "04b6461be4970bddb80cbed3c6350c1793cae87e16630996845d40e54f37ae9b"),
        .binaryTarget(name: "DotNfc", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-nfc/7.4.1/DotNfc.zip", checksum: "5a6e7d4e3a768f5b29d7e63779d89d4cf28d9425312ee46c80bc11db73b999c9"),
        .binaryTarget(name: "DotDocument", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-document/7.4.1/DotDocument.zip", checksum: "0043a005fad30068b6e5893a88d589e83cac0efd8770755de546706669b95c6a"),
        .binaryTarget(name: "DotFaceLite", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-lite/7.4.1/DotFaceLite.zip", checksum: "8f69cb24e992154cd7acafd320819fe6bcb008b098523cae1501b8eca4aae43d"),
        .binaryTarget(name: "DotFaceCore", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-core/7.4.1/DotFaceCore.zip", checksum: "a6287d443b808634811b101e7c0414d440415eaf7509a0c0aa33aec4f39192ea"),
        .binaryTarget(name: "DotFaceVerification", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-verification/7.4.1/DotFaceVerification.zip", checksum: "b019f7554adc83881022e53bc660cb91c3fdf3dc4bfaebfb85387f92535f2f96"),
        .binaryTarget(name: "DotFaceEyeGazeLiveness", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-eye-gaze-liveness/7.4.1/DotFaceEyeGazeLiveness.zip", checksum: "fbb708226bad51631d9e553263ce12704cdeff0e6e6a2740236fe751458bf1d3"),
        .binaryTarget(name: "DotFaceExpressionNeutral", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-expression-neutral/7.4.1/DotFaceExpressionNeutral.zip", checksum: "9a1384e3eac78ba0a3f871b07446b6bb821f3fb41edb63a81fc8d4fe3781bd43"),
        .binaryTarget(name: "DotFaceDetectionFast", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-detection-fast/7.4.1/DotFaceDetectionFast.zip", checksum: "d5d6db0077b400ce8c4c5f284d2188cd13ebb858fc0fdaaf3784aa95e5c5fb79"),
        .binaryTarget(name: "DotFaceBackgroundUniformity", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-background-uniformity/7.4.1/DotFaceBackgroundUniformity.zip", checksum: "74e75885c5eb922056e31522226a2f51a9fa101a5b5fd8eebbc3e130abd888d9"),
        .binaryTarget(name: "DotFaceDetectionBalanced", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-detection-balanced/7.4.1/DotFaceDetectionBalanced.zip", checksum: "61472e46d0b268231e555990db25e27c4d4fc2b9e61eb3276e65ec38679d22de"),
        .binaryTarget(name: "DotFacePassiveLiveness", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-passive-liveness/7.4.1/DotFacePassiveLiveness.zip", checksum: "dbc9cf9403c50bebe6a578232b8adcc271205102b6d54c8eeb843d8a28caa278"),
    ]
)
