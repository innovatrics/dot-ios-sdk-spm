// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DotSdk",
    platforms: [.iOS(.v12)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "DotFaceLite",
            targets: ["DotFaceLite", "SamFace", "DotProtocolBuffers", "DotCore", "DotCamera", "DotFaceCommons", "DotCapture"]),
        .library(
            name: "DotDocument",
            targets: ["DotDocument", "sam", "DotCore", "DotCamera", "DotProtocolBuffers", "DotDocumentCommons", "DotCapture"]),
        .library(
            name: "DotNfc",
            targets: ["DotNfc", "DotOpenSSL", "DotDocumentCommons", "DotCore"]),
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
        .binaryTarget(name: "sam", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/sam/2.39.2/Sam.zip", checksum: "afd069a33a35c358438b651af5a91627a7b45b78b8432f927346eafff6304535"),
        .binaryTarget(name: "iface", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/iface/5.1.2/IFace.zip", checksum: "a89858f39df9cb8ce0b6656f1ad072eccd6bbecc4d17bf82955358eea7214d76"),
        .binaryTarget(name: "innoonnxruntime", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/onnx/2.1.2/Onnx.zip", checksum: "19daf2d3a8e7f3e9b1f0fd0637c14696bd8ebcca6fc0c61aead2531ab0190e2d"),
        .binaryTarget(name: "DotProtocolBuffers", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-protobuf/1.8.0/DotProtocolBuffers.zip", checksum: "e8f500ba22d16e2e126f5f5833a0503b20a5612825914cb3e0871bdba98c8b3b"),
        .binaryTarget(name: "DotOpenSSL", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-openssl/1.2.1/DotOpenSSL.zip", checksum: "c3f919ef386334b683844e077e58996705b4c6d6cd568763e21e970a82f731e9"),
        .binaryTarget(name: "SamFace", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/sam-face/1.39.2/SamFace.zip", checksum: "478829ed090752437d62876d9bbaf85ef4065b31b904f9a2e8b5387ab7eeefef"),
        .binaryTarget(name: "DotCore", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-core/8.4.1/DotCore.zip", checksum: "4faa8b854a8c7158f45b1070cf001c1caab976d3e3967a7aa97dae1d4498dc74"),
        .binaryTarget(name: "DotCapture", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-capture/8.4.1/DotCapture.zip", checksum: "0c85f9d99a0a223834d3656087d2e771ea1706a31433cf7a43d29554c4efabbe"),
        .binaryTarget(name: "DotCamera", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-camera/8.4.1/DotCamera.zip", checksum: "2d27a66657f12d1d42ee5c94526875695318bbf673d913b3b87356961a2549cd"),
        .binaryTarget(name: "DotFaceCommons", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-commons/8.4.1/DotFaceCommons.zip", checksum: "a98ef066b0858c78151783b05f6c8875432a2eea13cdcc717fea315e8759aaaa"),
        .binaryTarget(name: "DotDocumentCommons", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-document-commons/8.4.1/DotDocumentCommons.zip", checksum: "0e69e378acc059893248e12a82e806bf1cd89a6e4dc6da4ecc6a1254eb59fcb2"),
        .binaryTarget(name: "DotNfc", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-nfc/8.4.1/DotNfc.zip", checksum: "55d618e44cc6a4accdf29216fed074613fead5a3d44e3213e812674b9b143676"),
        .binaryTarget(name: "DotDocument", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-document/8.4.1/DotDocument.zip", checksum: "835dfdb296b1636a5388d7d71b225f3fcbadcdc5da4cde5fdf89557c595ae88e"),
        .binaryTarget(name: "DotFaceLite", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-lite/8.4.1/DotFaceLite.zip", checksum: "6c5fe63a2bed8371fe38ec3e749a17fbc665f5b1c4430db19d22cfd950e8dc00"),
        .binaryTarget(name: "DotFaceCore", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-core/8.4.1/DotFaceCore.zip", checksum: "996e415fa5942df37e7971579de007d6b1c6810bf299fed6d2473d8e547b0a57"),
        .binaryTarget(name: "DotFaceVerification", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-verification/8.4.1/DotFaceVerification.zip", checksum: "2b3ac47ad9c7bca578ca12309eb4aa62cbd04cef7ff3ad8353d6629e492908c9"),
        .binaryTarget(name: "DotFaceEyeGazeLiveness", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-eye-gaze-liveness/8.4.1/DotFaceEyeGazeLiveness.zip", checksum: "a8d5f09db255a3c8c23556425b7de7050b7ff87798ca0063339ac05c5ac89b50"),
        .binaryTarget(name: "DotFaceExpressionNeutral", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-expression-neutral/8.4.1/DotFaceExpressionNeutral.zip", checksum: "a85e10df49419163e9ebef2a6e25d1cf94881a7bd201e2c99d0fdf9067bea27f"),
        .binaryTarget(name: "DotFaceDetectionFast", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-detection-fast/8.4.1/DotFaceDetectionFast.zip", checksum: "0b08c650b21c83ad709b7dc896c3b41906fb99419549eebc50b32ce7248b22a3"),
        .binaryTarget(name: "DotFaceBackgroundUniformity", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-background-uniformity/8.4.1/DotFaceBackgroundUniformity.zip", checksum: "890c1f7944ac75a172baf78b2d407793757d811a4e06e0fadc0846cf7123db7b"),
        .binaryTarget(name: "DotFaceDetectionBalanced", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-detection-balanced/8.4.1/DotFaceDetectionBalanced.zip", checksum: "bdb202a0d7335aed50da15d2714a09b05211094db979acd228699c6e99785abf"),
        .binaryTarget(name: "DotFacePassiveLiveness", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-passive-liveness/8.4.1/DotFacePassiveLiveness.zip", checksum: "6babf68de3896777894eaba37c24b6bf08764fa8aae5f5c1b76d9c2221847525"),
    ]
)
