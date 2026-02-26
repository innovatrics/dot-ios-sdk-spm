// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DotSdk",
    platforms: [.iOS(.v13)],
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
            name: "DotDocumentBarcode",
            targets: ["DotDocumentBarcode", "DotDocument", "DotCore", "DotCapture"]
        ),
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
        .binaryTarget(name: "iface", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/iface/6.24.0/IFace.zip", checksum: "3d9f465c571565892fcda605489a8cff049fcd6b1b004bb00fd566b70a74f588"),
        .binaryTarget(name: "innoonnxruntime", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/onnx/6.24.0/Onnx.zip", checksum: "0b60954e30c6e804b5a93ddecac07e2a3d28f0100ffdb27dd612c3b12dbf73a9"),
        .binaryTarget(name: "DotProtocolBuffers", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-protobuf/1.17.0/DotProtocolBuffers.zip", checksum: "fe8eb2fa05123100ef374323ca0ccdacef106b84d6302987756c92041dca0f6b"),
        .binaryTarget(name: "DotOpenSSL", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-openssl/1.2.1/DotOpenSSL.zip", checksum: "c3f919ef386334b683844e077e58996705b4c6d6cd568763e21e970a82f731e9"),
        .binaryTarget(name: "DotCore", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-core/9.2.0/DotCore.zip", checksum: "25b6d5ae7cd19b9dc2036788addd3005db64e2372acd699cccb7c02498e27aee"),
        .binaryTarget(name: "DotSerialization", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-serialization/9.2.0/DotSerialization.zip", checksum: "8d5f3432aab19d7723621d9335d613b1224958507aea3d1125e01a8e3bf34be7"),
        .binaryTarget(name: "DotCapture", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-capture/9.2.0/DotCapture.zip", checksum: "4aa1fb566775d27cbd374c96df7ed33b4c71b7f79bfb90401c412a733b36b66e"),
        .binaryTarget(name: "DotCamera", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-camera/9.2.0/DotCamera.zip", checksum: "b10e6206304c7039eae722c4406c9e9495c9ba6f99908c8c5c6398d6e1d68880"),
        .binaryTarget(name: "DotFaceCommons", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-commons/9.2.0/DotFaceCommons.zip", checksum: "fe0c8ea18fca7e08fe4737de65c6cc5cb3e36c3887db32dada8b320037871048"),
        .binaryTarget(name: "DotDocumentCommons", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-document-commons/9.2.0/DotDocumentCommons.zip", checksum: "94a9a9a62e1a287eae333f561b8bf0428f8ef67b8986a805a49ba02dc9766abc"),
        .binaryTarget(name: "DotNfc", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-nfc/9.2.0/DotNfc.zip", checksum: "149c4ed7cbaf14bdeced1a45a4394f859948a71ce3b7cce4306ee8308c578fd2"),
        .binaryTarget(name: "DotDocument", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-document/9.2.0/DotDocument.zip", checksum: "f25c766ba50c1838a6fdf6748f72c104487ef88a21c934047cd0c5a5c4957beb"),
        .binaryTarget(name: "DotDocumentBarcode", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-document-barcode/9.2.0/DotDocumentBarcode.zip", checksum: "33e12edec01c1330a16aea5aa5cadf8a2714ad15f9c090790dba09a2e682700c"),
        .binaryTarget(name: "DotPalmCore", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-palm-core/9.2.0/DotPalmCore.zip", checksum: "d85917ceb9bebee81984492967e089497f69dbdc82b29ff5d90197590743eed5"),
        .binaryTarget(name: "DotPalmDetection", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-palm-detection/9.2.0/DotPalmDetection.zip", checksum: "790ac1356ccb38992b9bab698373bc1ad3d7d6ee5090f618847e96346b44f735"),
        .binaryTarget(name: "DotFaceLite", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-lite/9.2.0/DotFaceLite.zip", checksum: "d4c4f042de8d142168cd682742ce14f85d9b64aec5775871556bfdf2259213ad"),
        .binaryTarget(name: "DotFaceCore", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-core/9.2.0/DotFaceCore.zip", checksum: "14dd3735f7268f515617130d4f5da7469830ab5902fe20ff4c1b4b11286b8d18"),
        .binaryTarget(name: "DotFaceVerification", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-verification/9.2.0/DotFaceVerification.zip", checksum: "44e46275cb7da0df650f77ee35fbbaa5fb9acd0ecca2ff5e0d2e2f1fac762a9b"),
        .binaryTarget(name: "DotFaceEyeGazeLiveness", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-eye-gaze-liveness/9.2.0/DotFaceEyeGazeLiveness.zip", checksum: "c277899ef654a39fe26478d52e3fd373dc873b453382efd81a2d388ee280050a"),
        .binaryTarget(name: "DotFaceExpressionNeutral", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-expression-neutral/9.2.0/DotFaceExpressionNeutral.zip", checksum: "28c47814ac534cd701f389758133c5365c24dcdabedd0ff1f0c7b95338b95d4f"),
        .binaryTarget(name: "DotFaceDetectionFast", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-detection-fast/9.2.0/DotFaceDetectionFast.zip", checksum: "d05974d57235a19570cceea1831fd524b6f2640662bf0bcd52d3da3295d9b9a2"),
        .binaryTarget(name: "DotFaceBackgroundUniformity", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-background-uniformity/9.2.0/DotFaceBackgroundUniformity.zip", checksum: "c0b92c35d61a2bb4f834302c1772a7788c1ba3e86573518f6188147e2c0b9c2c"),
        .binaryTarget(name: "DotFaceDetectionBalanced", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-detection-balanced/9.2.0/DotFaceDetectionBalanced.zip", checksum: "898befa950f2ef20da4d9cce5d0ebe4b245ca71f6cbefac96f41f325251e174f"),
        .binaryTarget(name: "DotFacePassiveLiveness", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-passive-liveness/9.2.0/DotFacePassiveLiveness.zip", checksum: "44cb9830ab825a8c6a37f166bba0e93483f645bf7001ac3d2bc45dc16c6ff4c6"),
    ]
)
