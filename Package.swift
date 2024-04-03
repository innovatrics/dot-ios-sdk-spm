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
        .binaryTarget(name: "DotCore", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-core/7.5.0/DotCore.zip", checksum: "560c735b61a7194d33a2c32f204044a56e560d37e8afc0777d2df35a3c318cf4"),
        .binaryTarget(name: "DotCapture", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-capture/7.5.0/DotCapture.zip", checksum: "362d8363ca6125c3f28da9709e2d32af57027fa3d8cc467cc418835390f7a739"),
        .binaryTarget(name: "DotCamera", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-camera/7.5.0/DotCamera.zip", checksum: "069bfea3b35458f536811b49a28962f4efea82410c6ce8742bac38404d2975b2"),
        .binaryTarget(name: "DotFaceCommons", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-commons/7.5.0/DotFaceCommons.zip", checksum: "80788ce1f9aba5a5b74e0e0100a08e6c1b64f86e024ada0ec920c63a818e4233"),
        .binaryTarget(name: "DotNfc", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-nfc/7.5.0/DotNfc.zip", checksum: "1e780e86390856e9b832d5a1b464de966f66a3848353e3ca34ae221383f04dc6"),
        .binaryTarget(name: "DotDocument", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-document/7.5.0/DotDocument.zip", checksum: "0e6870f66f536d08bbccf3718317879268b66d5a3c6f64ce3f54f120b040ae06"),
        .binaryTarget(name: "DotFaceLite", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-lite/7.5.0/DotFaceLite.zip", checksum: "a04eb65eb3a1e76b39864bdd3ff80f2f69169c4cc93a6672b6bed4ce341bd843"),
        .binaryTarget(name: "DotFaceCore", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-core/7.5.0/DotFaceCore.zip", checksum: "c50f95fcf4220e7e8385f70f097aa48e5feb392735ab8d53186db4f85495bae9"),
        .binaryTarget(name: "DotFaceVerification", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-verification/7.5.0/DotFaceVerification.zip", checksum: "5ecb7c4671784751edde460dab0c2f7ff895af1ae021cf84e1fb9d6c1af60a2b"),
        .binaryTarget(name: "DotFaceEyeGazeLiveness", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-eye-gaze-liveness/7.5.0/DotFaceEyeGazeLiveness.zip", checksum: "9462419118b4670738826daf45c9f2991367e5f55986a8c2eb856e4d5a9654ce"),
        .binaryTarget(name: "DotFaceExpressionNeutral", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-expression-neutral/7.5.0/DotFaceExpressionNeutral.zip", checksum: "7fa6a5fe93fc49889e83e5bf150fc2f9561aa40f92f68adb1f345e7c060eda1c"),
        .binaryTarget(name: "DotFaceDetectionFast", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-detection-fast/7.5.0/DotFaceDetectionFast.zip", checksum: "9c57914344766d1c357ea4bda575673033b4ecb5a135631c9d615e7b903fe0e6"),
        .binaryTarget(name: "DotFaceBackgroundUniformity", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-background-uniformity/7.5.0/DotFaceBackgroundUniformity.zip", checksum: "76e7ee185af8f98351d17efad3c0ccf511b14592b8f7860493b2cc70a12d7620"),
        .binaryTarget(name: "DotFaceDetectionBalanced", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-detection-balanced/7.5.0/DotFaceDetectionBalanced.zip", checksum: "a4908dfb1aa743646f7954294f49d4e89ca7b4545b42c818ada06e3d491f5675"),
        .binaryTarget(name: "DotFacePassiveLiveness", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-passive-liveness/7.5.0/DotFacePassiveLiveness.zip", checksum: "87c2bf4bdf9ba74e5638dbb5c299086d8bd037c1cfb9e3d843365cff5551e86a"),
    ]
)
