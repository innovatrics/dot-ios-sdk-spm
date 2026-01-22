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
        .binaryTarget(name: "DotCore", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-core/8.17.1/DotCore.zip", checksum: "2d383838f3686dcd2d0c79d34465b7901391ee4be3620114fd21f354736795ca"),
        .binaryTarget(name: "DotSerialization", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-serialization/8.17.1/DotSerialization.zip", checksum: "921d666d9ec209fc6ec48343fe3238ca97fe4484654ab96846088e3d5773704d"),
        .binaryTarget(name: "DotCapture", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-capture/8.17.1/DotCapture.zip", checksum: "b347d832aa9c9ef145c47394271b3764f7b6635b1798b3736fe40e46281c5739"),
        .binaryTarget(name: "DotCamera", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-camera/8.17.1/DotCamera.zip", checksum: "053c781a19afe7a5e8219ee7a737d7deb3935c3747f1378c0269d6a8bca2835f"),
        .binaryTarget(name: "DotFaceCommons", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-commons/8.17.1/DotFaceCommons.zip", checksum: "e5406cdd19f00348f8fc7e6d648f2ecf0b5679f88d0832671c74645644cf721f"),
        .binaryTarget(name: "DotDocumentCommons", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-document-commons/8.17.1/DotDocumentCommons.zip", checksum: "102edda0aa595b00cac0c4d8f018c9375d16b33ff0b2d92e44c10da067086a6e"),
        .binaryTarget(name: "DotNfc", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-nfc/8.17.1/DotNfc.zip", checksum: "dda585c50c19f04552703608f98d9d000adc35f4f18d24f11e005d4614a3ba14"),
        .binaryTarget(name: "DotDocument", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-document/8.17.1/DotDocument.zip", checksum: "6d0c1b9969b09625dbaa95b472266b7ce7412fa3c1b8ca489356fc080b44f341"),
        .binaryTarget(name: "DotPalmCore", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-palm-core/8.17.1/DotPalmCore.zip", checksum: "2e67d89daea4a8064229bcedeb4b2f8993267b2d6ce64c84959211cadffdd3af"),
        .binaryTarget(name: "DotPalmDetection", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-palm-detection/8.17.1/DotPalmDetection.zip", checksum: "674b4657809214a856dfcb26e04d451eca059134c0c8eb6409b6018ff48b6f0b"),
        .binaryTarget(name: "DotFaceLite", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-lite/8.17.1/DotFaceLite.zip", checksum: "0374074c8fba4a0454cf6a61da48e651e21b3b9dc3869c1c457ef530a2e02eea"),
        .binaryTarget(name: "DotFaceCore", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-core/8.17.1/DotFaceCore.zip", checksum: "f71162cc0bc0d5cd1550b6b9881049801c17b84fee45e412f098abdf72aeb4f1"),
        .binaryTarget(name: "DotFaceVerification", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-verification/8.17.1/DotFaceVerification.zip", checksum: "7b1e1f9b8069de2f5f26f43c816fb5d57c5dcbf90a84c122bdc1ea0e4a7302ef"),
        .binaryTarget(name: "DotFaceEyeGazeLiveness", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-eye-gaze-liveness/8.17.1/DotFaceEyeGazeLiveness.zip", checksum: "5ac8b8477036ccfe9633ba24f7e6964bf1ab535d681ed37bba201d38c070901a"),
        .binaryTarget(name: "DotFaceExpressionNeutral", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-expression-neutral/8.17.1/DotFaceExpressionNeutral.zip", checksum: "095d68bc1b82c2a9bc101cbb5ed6b13de608e8d0d4f9b661b78536a5cb70979b"),
        .binaryTarget(name: "DotFaceDetectionFast", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-detection-fast/8.17.1/DotFaceDetectionFast.zip", checksum: "e2ddf6121b0db016a71af9e7780f627e7615728452359bbc1ebeef3253f6df88"),
        .binaryTarget(name: "DotFaceBackgroundUniformity", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-background-uniformity/8.17.1/DotFaceBackgroundUniformity.zip", checksum: "f188df6442790399f19e06d0eb79585dfc97a65b97f7a14ea97a4971d316a959"),
        .binaryTarget(name: "DotFaceDetectionBalanced", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-detection-balanced/8.17.1/DotFaceDetectionBalanced.zip", checksum: "ff9331fa144a1bba7f76c285e73bbc2df2b00a4b9121a9bec600a4c8e27ee1d9"),
        .binaryTarget(name: "DotFacePassiveLiveness", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-passive-liveness/8.17.1/DotFacePassiveLiveness.zip", checksum: "025ecc10560f783c9a8f0cbb76af7224eb6d55d2b9744668eb1e70d65e895933"),
    ]
)
