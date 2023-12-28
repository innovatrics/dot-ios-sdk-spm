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
        .binaryTarget(name: "DotCore", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-core/7.2.0/DotCore.zip", checksum: "56ce26fcdd79ea146d277e38773050cac9a65e51a36230d0cd28d762b6dfd7ba"),
        .binaryTarget(name: "DotCapture", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-capture/7.2.0/DotCapture.zip", checksum: "113c0da472712234f6f8ac498ddaed70feaefd0b661eaf6019c2b157d0d12fbe"),
        .binaryTarget(name: "DotCamera", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-camera/7.2.0/DotCamera.zip", checksum: "56d0f7bf7ad967e49444664e7b66310fe9b555e81fd76ecf5449bcb2c6f1c319"),
        .binaryTarget(name: "DotFaceCommons", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-commons/7.2.0/DotFaceCommons.zip", checksum: "673c5cdcdafb728e705156aa6f4ceff29a17155bc2ada71bcfef70516d83f35f"),
        .binaryTarget(name: "DotNfc", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-nfc/7.2.0/DotNfc.zip", checksum: "1ddaa9f0cab67f390e4b23318deb6798a56c4dde3f6851252406da184c299dab"),
        .binaryTarget(name: "DotDocument", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-document/7.2.0/DotDocument.zip", checksum: "2ca2935b8d3eb863e92425bff52c3539c4a5b89500b7dabe5b52359e7962bd4b"),
        .binaryTarget(name: "DotFaceLite", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-lite/7.2.0/DotFaceLite.zip", checksum: "7246107d22dab296c2a6801542d0ade70615c501e1c80575efd81db0d9b79a65"),
        .binaryTarget(name: "DotFaceCore", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-core/7.2.0/DotFaceCore.zip", checksum: "506e1de7f02f5f4f6ed131a7872db51813393796240bbc62a68ddba31bcd8a18"),
        .binaryTarget(name: "DotFaceVerification", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-verification/7.2.0/DotFaceVerification.zip", checksum: "8cab730e3362ceb0a1bf9df596d19a3280a831edab10b90cf532ad4c396fb427"),
        .binaryTarget(name: "DotFaceEyeGazeLiveness", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-eye-gaze-liveness/7.2.0/DotFaceEyeGazeLiveness.zip", checksum: "2f52600a18eeb155eed2930678f0e9f00a18635cd959825f0da50b767a7165b3"),
        .binaryTarget(name: "DotFaceExpressionNeutral", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-expression-neutral/7.2.0/DotFaceExpressionNeutral.zip", checksum: "8657a9b61687a3f3676e4ce9cad2c22c496227f6b71e6ce18bc255e68920fac3"),
        .binaryTarget(name: "DotFaceDetectionFast", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-detection-fast/7.2.0/DotFaceDetectionFast.zip", checksum: "5744dd18f5d12451fceff8b06093d7177de63737a70879de3812897c99befb45"),
        .binaryTarget(name: "DotFaceBackgroundUniformity", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-background-uniformity/7.2.0/DotFaceBackgroundUniformity.zip", checksum: "7136421cf81dce0260e9053e948d903106831bca9c16de94e201889804542a68"),
        .binaryTarget(name: "DotFaceDetectionBalanced", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-detection-balanced/7.2.0/DotFaceDetectionBalanced.zip", checksum: "eb845fee284284ca0098ec086979049f4ff3058b9683617bee4722adb1c6b2e8"),
        .binaryTarget(name: "DotFacePassiveLiveness", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-passive-liveness/7.2.0/DotFacePassiveLiveness.zip", checksum: "ba3009c6e66c01d82ee42329aa93f926edd5c77ae5211812cb3b35de4ce6c3e6"),
    ]
)
