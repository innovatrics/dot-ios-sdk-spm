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
            targets: ["DotFaceLite", "DotProtocolBuffers", "DotCore", "DotCamera", "DotFaceCommons", "DotCapture"]),
        .library(
            name: "DotDocument",
            targets: ["DotDocument", "DotCore", "DotCamera", "DotProtocolBuffers", "DotDocumentCommons", "DotCapture"]),
        .library(
            name: "DotPalmDetection",
            targets: ["DotPalmDetection", "DotPalmCore", "DotCore", "DotCamera", "DotProtocolBuffers", "DotCapture"]),
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
        .binaryTarget(name: "iface", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/iface/5.1.2/IFace.zip", checksum: "a89858f39df9cb8ce0b6656f1ad072eccd6bbecc4d17bf82955358eea7214d76"),
        .binaryTarget(name: "innoonnxruntime", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/onnx/2.1.2/Onnx.zip", checksum: "19daf2d3a8e7f3e9b1f0fd0637c14696bd8ebcca6fc0c61aead2531ab0190e2d"),
        .binaryTarget(name: "DotProtocolBuffers", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-protobuf/1.12.0/DotProtocolBuffers.zip", checksum: "fe32d010187448128bd4ab4d59c013b4a58f073796f8446486d674b4fb9ccb84"),
        .binaryTarget(name: "DotOpenSSL", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-openssl/1.2.1/DotOpenSSL.zip", checksum: "c3f919ef386334b683844e077e58996705b4c6d6cd568763e21e970a82f731e9"),
        .binaryTarget(name: "DotCore", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-core/8.7.1/DotCore.zip", checksum: "f43f8f1ede54453babccdc4be549719ee0224d5f70b804ba26dfa760ebb25fcc"),
        .binaryTarget(name: "DotCapture", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-capture/8.7.1/DotCapture.zip", checksum: "5517a65c623ead8d98aa4b8b034b82ab0eeda96837f8bedfc52f7f4fc9e6018f"),
        .binaryTarget(name: "DotCamera", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-camera/8.7.1/DotCamera.zip", checksum: "6449d6e55e8c5a406f8195636accec54cdb3c8a2d812f7d58fc6a93caed17167"),
        .binaryTarget(name: "DotFaceCommons", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-commons/8.7.1/DotFaceCommons.zip", checksum: "f1c68c44c1d6d072ff063602670255cb04d4fc03a50a39ab0d830888d0795bcf"),
        .binaryTarget(name: "DotDocumentCommons", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-document-commons/8.7.1/DotDocumentCommons.zip", checksum: "c34741c4c4b3971c7b775428b61490b97460a9c91d1e91db52ceefdaf0e3ce53"),
        .binaryTarget(name: "DotNfc", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-nfc/8.7.1/DotNfc.zip", checksum: "358668e49254a9f95e16f2e3a4e18b0a54c2f01ff4746d595331d3d4e18847d5"),
        .binaryTarget(name: "DotDocument", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-document/8.7.1/DotDocument.zip", checksum: "0dedf4ec64a7558a574ad0249fc70bbcda4f69d0d0cb108ec1222c9d8c5eafef"),
        .binaryTarget(name: "DotPalmCore", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-palm-core/8.7.1/DotPalmCore.zip", checksum: "2727fc0f91c129427e1808bf74247458e1563470c3bd1eed2f54dd1b7a99940f"),
        .binaryTarget(name: "DotPalmDetection", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-palm-detection/8.7.1/DotPalmDetection.zip", checksum: "e8197639dd9020506495b88dbe67a60e3cddc96268a99af84041b458c21c8229"),
        .binaryTarget(name: "DotFaceLite", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-lite/8.7.1/DotFaceLite.zip", checksum: "680750eea86575be54d0f192ba4940d7aaff8fff709233e32299d6861c317b21"),
        .binaryTarget(name: "DotFaceCore", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-core/8.7.1/DotFaceCore.zip", checksum: "5776aed28fe4d6216581b255a92d4fa7519af2ff02bc5030e170a1f16518eed0"),
        .binaryTarget(name: "DotFaceVerification", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-verification/8.7.1/DotFaceVerification.zip", checksum: "7568dbc8b03662a9db314d0ab386b9fe65385df52381f13f1bd8a4a8b902db72"),
        .binaryTarget(name: "DotFaceEyeGazeLiveness", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-eye-gaze-liveness/8.7.1/DotFaceEyeGazeLiveness.zip", checksum: "4734cb5d7c4471216da5c4f6554cd8dc14d3bea205f40c6b3b5c226be252ba2b"),
        .binaryTarget(name: "DotFaceExpressionNeutral", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-expression-neutral/8.7.1/DotFaceExpressionNeutral.zip", checksum: "ae809c1c7d76c19a3408362f686acb4cadf012411a479bce6a46cb4c659aba98"),
        .binaryTarget(name: "DotFaceDetectionFast", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-detection-fast/8.7.1/DotFaceDetectionFast.zip", checksum: "d29bd512fc091df56fcc47f0f47da89c4930bbb2ef8ea2290da4f725975b4f16"),
        .binaryTarget(name: "DotFaceBackgroundUniformity", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-background-uniformity/8.7.1/DotFaceBackgroundUniformity.zip", checksum: "9f9679969f9769f757e0cdcb374d261338f6810535d13600d516b97826271678"),
        .binaryTarget(name: "DotFaceDetectionBalanced", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-detection-balanced/8.7.1/DotFaceDetectionBalanced.zip", checksum: "752b06014386a9b4feeea715955b2e0c666d076d33612e1900a7cd1b51ae7a1a"),
        .binaryTarget(name: "DotFacePassiveLiveness", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-passive-liveness/8.7.1/DotFacePassiveLiveness.zip", checksum: "2467c116f323a88e01fd0ecf1bfd81af6cb617b2b00c3e056af670d5c6348862"),
    ]
)
