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
            targets: ["DotFaceLite", "DotProtocolBuffers", "DotCore", "DotSerialization", "DotCamera", "DotFaceCommons", "DotCapture"]),
        .library(
            name: "DotDocument",
            targets: ["DotDocument", "DotCore", "DotSerialization", "DotCamera", "DotProtocolBuffers", "DotDocumentCommons", "DotCapture"]),
        .library(
            name: "DotPalmDetection",
            targets: ["DotPalmDetection", "DotPalmCore", "DotCore", "DotSerialization", "DotCamera", "DotProtocolBuffers", "DotCapture"]),
        .library(
            name: "DotNfc",
            targets: ["DotNfc", "DotOpenSSL", "DotDocumentCommons", "DotCore", "DotSerialization", "DotProtocolBuffers"]),
        .library(
            name: "DotFaceVerification",
            targets: ["DotFaceVerification", "DotFaceCore", "iface", "innoonnxruntime", "DotProtocolBuffers", "DotCore", "DotSerialization", "DotCamera", "DotFaceCommons", "DotCapture"]),
        .library(
            name: "DotFaceEyeGazeLiveness",
            targets: ["DotFaceEyeGazeLiveness", "DotFaceCore", "iface", "innoonnxruntime", "DotProtocolBuffers", "DotCore", "DotSerialization", "DotCamera", "DotFaceCommons", "DotCapture"]),
        .library(
            name: "DotFaceExpressionNeutral",
            targets: ["DotFaceExpressionNeutral", "DotFaceCore", "iface", "innoonnxruntime", "DotProtocolBuffers", "DotCore", "DotSerialization", "DotCamera", "DotFaceCommons", "DotCapture"]),
        .library(
            name: "DotFaceDetectionFast",
            targets: ["DotFaceDetectionFast", "DotFaceCore", "iface", "innoonnxruntime", "DotProtocolBuffers", "DotCore", "DotSerialization", "DotCamera", "DotFaceCommons", "DotCapture"]),
        .library(
            name: "DotFaceBackgroundUniformity",
            targets: ["DotFaceBackgroundUniformity", "DotFaceCore", "iface", "innoonnxruntime", "DotProtocolBuffers", "DotCore", "DotSerialization", "DotCamera", "DotFaceCommons", "DotCapture"]),
        .library(
            name: "DotFaceDetectionBalanced",
            targets: ["DotFaceDetectionBalanced", "DotFaceCore", "iface", "innoonnxruntime", "DotProtocolBuffers", "DotCore", "DotSerialization", "DotCamera", "DotFaceCommons", "DotCapture"]),
        .library(
            name: "DotFacePassiveLiveness",
            targets: ["DotFacePassiveLiveness", "DotFaceCore", "iface", "innoonnxruntime", "DotProtocolBuffers", "DotCore", "DotSerialization", "DotCamera", "DotFaceCommons", "DotCapture"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(name: "iface", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/iface/6.18.0/IFace.zip", checksum: "0f61225c8917ceacc617a8ff97e84c71675f059edf79e2df6f4f65408c7a6182"),
        .binaryTarget(name: "innoonnxruntime", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/onnx/6.18.0/Onnx.zip", checksum: "e7c41269f832068aa3cd3d2c2319a71c665ccff4b7f2e8da5334a87c07414f9b"),
        .binaryTarget(name: "DotProtocolBuffers", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-protobuf/1.16.2/DotProtocolBuffers.zip", checksum: "9b0ce3bfb41f2e53fb1c1b3ac4feb49ca800995c8ffd57b1a64635461f4a3220"),
        .binaryTarget(name: "DotOpenSSL", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-openssl/1.2.1/DotOpenSSL.zip", checksum: "c3f919ef386334b683844e077e58996705b4c6d6cd568763e21e970a82f731e9"),
        .binaryTarget(name: "DotCore", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-core/8.17.0/DotCore.zip", checksum: "8705b8837242855058191846cb62c23c23015d392eeddd02e0e43d399f3ff315"),
        .binaryTarget(name: "DotSerialization", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-serialization/8.17.0/DotSerialization.zip", checksum: "0ccbf34475d32940745a7bfe74c6435bab940f8fb172ddcd8609b4f701e07060"),
        .binaryTarget(name: "DotCapture", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-capture/8.17.0/DotCapture.zip", checksum: "b82189bc89160298d55d0743d202768d52d7f54a88b822418dced2883a8bd534"),
        .binaryTarget(name: "DotCamera", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-camera/8.17.0/DotCamera.zip", checksum: "fa4d1669b82f7ed78a956789048749765eddd58f8ff402f3156185b6941e3729"),
        .binaryTarget(name: "DotFaceCommons", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-commons/8.17.0/DotFaceCommons.zip", checksum: "d9a43c3eccf52004f02a69e56c4c6bafcda5a3cc7b2d64ea411d84fd56256e8a"),
        .binaryTarget(name: "DotDocumentCommons", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-document-commons/8.17.0/DotDocumentCommons.zip", checksum: "6701eecdbba99ae681bf1d50d19cbb29a201ccd927ca48ce3de77d002c2bd7d9"),
        .binaryTarget(name: "DotNfc", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-nfc/8.17.0/DotNfc.zip", checksum: "9bcd0c167da6c0dd5345fcd98e5d350b5127f12b0de5ba20d19b07b4c969fb03"),
        .binaryTarget(name: "DotDocument", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-document/8.17.0/DotDocument.zip", checksum: "8584e59064a72feacc28a0c1ced165350ef1389501aada7ca6bbf8d514f5869b"),
        .binaryTarget(name: "DotPalmCore", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-palm-core/8.17.0/DotPalmCore.zip", checksum: "fcabab3069d26a0c496fc982e484e5b0c0d3ab48562c41aa00929186f3df171c"),
        .binaryTarget(name: "DotPalmDetection", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-palm-detection/8.17.0/DotPalmDetection.zip", checksum: "49db1226c84512a1900e8215ca24e85323f4bf0428f6c0c5122baeed5354b4bb"),
        .binaryTarget(name: "DotFaceLite", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-lite/8.17.0/DotFaceLite.zip", checksum: "20ad84250f7018c5e2b3e6bc411355c87aa8554273a26a4b446a600c9aaab483"),
        .binaryTarget(name: "DotFaceCore", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-core/8.17.0/DotFaceCore.zip", checksum: "e4365025fe9a9b69eb349fb0873b63c8f131c79ba08d112d1234bd875d63e6a8"),
        .binaryTarget(name: "DotFaceVerification", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-verification/8.17.0/DotFaceVerification.zip", checksum: "f92de4d4e4ce174fd6aa04fe6a2c63a4afef37405857b0dc5f67fd4fcf588431"),
        .binaryTarget(name: "DotFaceEyeGazeLiveness", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-eye-gaze-liveness/8.17.0/DotFaceEyeGazeLiveness.zip", checksum: "0ebc20613b7b0499121554ae66e116cb34eb07506013591eb2008ec0f7641173"),
        .binaryTarget(name: "DotFaceExpressionNeutral", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-expression-neutral/8.17.0/DotFaceExpressionNeutral.zip", checksum: "e4e7fadef17668500b12d89694949b28a4f477c3b0d0717b575ecc165e0ee2e2"),
        .binaryTarget(name: "DotFaceDetectionFast", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-detection-fast/8.17.0/DotFaceDetectionFast.zip", checksum: "b12b16884a83e5ce770e5552b0ed1d8c03919bc64ab861af8264b5f71309b137"),
        .binaryTarget(name: "DotFaceBackgroundUniformity", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-background-uniformity/8.17.0/DotFaceBackgroundUniformity.zip", checksum: "179c341e727cc120efe2099e60d96ef9a7e2a09280110a175fa3ceedebca9180"),
        .binaryTarget(name: "DotFaceDetectionBalanced", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-detection-balanced/8.17.0/DotFaceDetectionBalanced.zip", checksum: "ca51c526195dc3aa2d70f8a497dd1830e3249285460485578cdc7fba3c1df4c8"),
        .binaryTarget(name: "DotFacePassiveLiveness", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-passive-liveness/8.17.0/DotFacePassiveLiveness.zip", checksum: "7e1497714d1fac2aa51d494e729f03bfd3482e5715329f76c065ae3ad1a06a93"),
    ]
)
