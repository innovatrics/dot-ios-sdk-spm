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
        .binaryTarget(name: "iface", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/iface/6.5.0/IFace.zip", checksum: "91540fd4d3cc3f8199022c5f648a10f1cf7d189bfa71522c5ff8ee064df89400"),
        .binaryTarget(name: "innoonnxruntime", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/onnx/6.5.0/Onnx.zip", checksum: "a6e77c8340f96efae0373d2412db2143f755a5fd456d1fdbf476bd96d9474b14"),
        .binaryTarget(name: "DotProtocolBuffers", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-protobuf/1.14.0/DotProtocolBuffers.zip", checksum: "49af527dbdfc87f2d3f958cbfcd473fbdfaab8103e2751503cb1c849a81aed11"),
        .binaryTarget(name: "DotOpenSSL", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-openssl/1.2.1/DotOpenSSL.zip", checksum: "c3f919ef386334b683844e077e58996705b4c6d6cd568763e21e970a82f731e9"),
        .binaryTarget(name: "DotCore", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-core/8.12.0/DotCore.zip", checksum: "6c38d14ff644a13f549655eaca4f4ad30b6d21e3bff982739b0278d59f6ac929"),
        .binaryTarget(name: "DotSerialization", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-serialization/8.12.0/DotSerialization.zip", checksum: "57b481feb9f54e70479818443e99084b892d0d82cda51d2f67c48ba93643010e"),
        .binaryTarget(name: "DotCapture", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-capture/8.12.0/DotCapture.zip", checksum: "0ff4fa5fa003b129c27081881bed3fcba9b2f287270132a85d5b42d004b908e5"),
        .binaryTarget(name: "DotCamera", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-camera/8.12.0/DotCamera.zip", checksum: "9ed7d91bdecf50c8e9eba66ca4092f7beacabe931436ee2423001d5c412590c2"),
        .binaryTarget(name: "DotFaceCommons", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-commons/8.12.0/DotFaceCommons.zip", checksum: "315d2c2082a1d145ac8d61ce09466d3bf48b8208db200ea27a81b5931db71751"),
        .binaryTarget(name: "DotDocumentCommons", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-document-commons/8.12.0/DotDocumentCommons.zip", checksum: "eaf94e94c5b634537ba03ed336fb2b90e9d3dd366940239ff191cfaecef7d9fc"),
        .binaryTarget(name: "DotNfc", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-nfc/8.12.0/DotNfc.zip", checksum: "665dc7e9a77b4c6bb76eab09267f05828c33e9fe9d366d45d4c099352049fae0"),
        .binaryTarget(name: "DotDocument", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-document/8.12.0/DotDocument.zip", checksum: "828ce73d81c91b63989bb21ecde9ad32775b46b7f0f664ad6500020d586472d1"),
        .binaryTarget(name: "DotPalmCore", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-palm-core/8.12.0/DotPalmCore.zip", checksum: "517b968837037deb81883a63bd29b1483319432bae5cb1c2ad9d1bd783a312ea"),
        .binaryTarget(name: "DotPalmDetection", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-palm-detection/8.12.0/DotPalmDetection.zip", checksum: "a0ee57d8fcd2cf1667ce42840db98a494ee5f517fa8545172f64250a4dec3a38"),
        .binaryTarget(name: "DotFaceLite", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-lite/8.12.0/DotFaceLite.zip", checksum: "5ab65e28a0eba8f677a0b56e783534bc553bdd9e67b453a0580b8f2bf6f3e151"),
        .binaryTarget(name: "DotFaceCore", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-core/8.12.0/DotFaceCore.zip", checksum: "6106b90c722679d312503b97bb12bd3cbd0bc8363f699d00bdd03b09f64d735e"),
        .binaryTarget(name: "DotFaceVerification", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-verification/8.12.0/DotFaceVerification.zip", checksum: "4b6c3129fee2f1e67b144b4bcc56233aa9cf1e4e16faf83b299b05a9db8ccefe"),
        .binaryTarget(name: "DotFaceEyeGazeLiveness", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-eye-gaze-liveness/8.12.0/DotFaceEyeGazeLiveness.zip", checksum: "8dd5242e25d80f53d5a34f81ad34f6748d12f1ce480d9869e4f2338cba65b2c5"),
        .binaryTarget(name: "DotFaceExpressionNeutral", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-expression-neutral/8.12.0/DotFaceExpressionNeutral.zip", checksum: "422d908d1900cc06bd04a79b030675b4f31b56316a55b771f721941fd4bb9cbf"),
        .binaryTarget(name: "DotFaceDetectionFast", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-detection-fast/8.12.0/DotFaceDetectionFast.zip", checksum: "c33bf7063b4beafcabaae29cf35104a9c92d2d762288e332d5e2ab6fca8987af"),
        .binaryTarget(name: "DotFaceBackgroundUniformity", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-background-uniformity/8.12.0/DotFaceBackgroundUniformity.zip", checksum: "f1e92000903165ab49b8778fc8990f9d9a5e058483983b5c9b1fcc2e1d646fe9"),
        .binaryTarget(name: "DotFaceDetectionBalanced", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-detection-balanced/8.12.0/DotFaceDetectionBalanced.zip", checksum: "ce2cd7dcd5d9c207c75298c14a669cbf331d689b4cb26528353d7a0a6e9aa591"),
        .binaryTarget(name: "DotFacePassiveLiveness", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-passive-liveness/8.12.0/DotFacePassiveLiveness.zip", checksum: "95be3f6b2aec45adadc7cd44d86fc360471b6b6c38d936e22c3c78bb08ba5ce6"),
    ]
)
