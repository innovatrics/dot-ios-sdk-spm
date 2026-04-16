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
        .binaryTarget(name: "DotCore", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-core/9.2.2/DotCore.zip", checksum: "63d4404b7ddedda40a8cd38372a810965bec7f7deca8e50b733a8e5ac6b380b4"),
        .binaryTarget(name: "DotSerialization", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-serialization/9.2.2/DotSerialization.zip", checksum: "dc3759a3d388142b70b2fca8a4a339b78ae3a0a705d6ce2abb98c3a23e212eef"),
        .binaryTarget(name: "DotCapture", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-capture/9.2.2/DotCapture.zip", checksum: "7845c29cc85c100b0a4a3a621e34e471ab208aa6f4c2b381dbca4f939d163c46"),
        .binaryTarget(name: "DotCamera", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-camera/9.2.2/DotCamera.zip", checksum: "616909e3913d1424b4b24096a248a54a1583344469377a3d10cadb1873d9870e"),
        .binaryTarget(name: "DotFaceCommons", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-commons/9.2.2/DotFaceCommons.zip", checksum: "35d8686f0f24b7dfb22cbc2aa235d027b0fd1d3274a4777936a9c926bc9a79ce"),
        .binaryTarget(name: "DotDocumentCommons", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-document-commons/9.2.2/DotDocumentCommons.zip", checksum: "ad97f7f2f2cccdfae38efed242abf70e0cde8fb9ef5b715ed9203bc76e5061b2"),
        .binaryTarget(name: "DotNfc", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-nfc/9.2.2/DotNfc.zip", checksum: "4f1d85280f4f7aeff642352592c6d2ef936825880d98834c14229e346c754d93"),
        .binaryTarget(name: "DotDocument", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-document/9.2.2/DotDocument.zip", checksum: "d69618a9a25c16d1c39354889b5f88812312896f84e0e0c0ac1e68613da313bd"),
        .binaryTarget(name: "DotDocumentBarcode", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-document-barcode/9.2.2/DotDocumentBarcode.zip", checksum: "9225ca7b4523c9070506247e092da04c02bf32a17fb276f5b0bde4093ed44cee"),
        .binaryTarget(name: "DotPalmCore", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-palm-core/9.2.2/DotPalmCore.zip", checksum: "bdf85e3c979bce5168cf17f252b39b2344f85c51bb40ba3850f76ef50c23110d"),
        .binaryTarget(name: "DotPalmDetection", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-palm-detection/9.2.2/DotPalmDetection.zip", checksum: "ad39b050b23fcb08c0147e52554d452f5241098538e0cb0791ba6edff12a28e8"),
        .binaryTarget(name: "DotFaceLite", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-lite/9.2.2/DotFaceLite.zip", checksum: "0296cc913d13275f0562ce43256917e81a7419040c5cfe06db092cd09e024615"),
        .binaryTarget(name: "DotFaceCore", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-core/9.2.2/DotFaceCore.zip", checksum: "872eb37fe80fe82e37975e0bdb4602260f4518eaa369206bfd22d90cfeb949d0"),
        .binaryTarget(name: "DotFaceVerification", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-verification/9.2.2/DotFaceVerification.zip", checksum: "784f9fc9f474e532ca0824a24fc38740ca7b3f5b9d6aa5773f5853022adbe2d2"),
        .binaryTarget(name: "DotFaceEyeGazeLiveness", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-eye-gaze-liveness/9.2.2/DotFaceEyeGazeLiveness.zip", checksum: "630f8703b20e28c7b44d3b1d3623203aab2e0506cf4080dea1292d707bb113af"),
        .binaryTarget(name: "DotFaceExpressionNeutral", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-expression-neutral/9.2.2/DotFaceExpressionNeutral.zip", checksum: "8b538ef2ee9dece8b4b832cf1862e3c5c7e1992d8025825ddc1051befb26789d"),
        .binaryTarget(name: "DotFaceDetectionFast", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-detection-fast/9.2.2/DotFaceDetectionFast.zip", checksum: "0f902186d7b7580fe0987f80cff48f9cc9c96bdbbf0aa75c4d8da5df06115e93"),
        .binaryTarget(name: "DotFaceBackgroundUniformity", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-background-uniformity/9.2.2/DotFaceBackgroundUniformity.zip", checksum: "2eb9bbecaba8ffc7fd44d45d542e90a004361da6c723426412709cac53681e3b"),
        .binaryTarget(name: "DotFaceDetectionBalanced", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-detection-balanced/9.2.2/DotFaceDetectionBalanced.zip", checksum: "feb7938391b918d46d3ce6173074843f12e5f0760a5d5dffe56387cc637c928c"),
        .binaryTarget(name: "DotFacePassiveLiveness", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-passive-liveness/9.2.2/DotFacePassiveLiveness.zip", checksum: "5cb1a881b61a631db7ea6d2133d2555938c78dedfbeb360a8d6fb40be8d89144"),
    ]
)
