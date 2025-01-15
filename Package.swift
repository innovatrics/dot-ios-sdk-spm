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
        .binaryTarget(name: "DotProtocolBuffers", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-protobuf/1.10.0/DotProtocolBuffers.zip", checksum: "43eca39e9658a880b51da59dbe67bdf232fff79d6e6db520d0312dac543c7fbe"),
        .binaryTarget(name: "DotOpenSSL", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-openssl/1.2.1/DotOpenSSL.zip", checksum: "c3f919ef386334b683844e077e58996705b4c6d6cd568763e21e970a82f731e9"),
        .binaryTarget(name: "DotCore", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-core/8.6.1/DotCore.zip", checksum: "8357d9e80fec071305659daa1e9e67c4abed0dd69a588f138b16a7b7e65c1503"),
        .binaryTarget(name: "DotCapture", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-capture/8.6.1/DotCapture.zip", checksum: "dba6d3353c1ba1a9a8c8de407fcd2e219da2c75edd8d813ad08656aac976b084"),
        .binaryTarget(name: "DotCamera", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-camera/8.6.1/DotCamera.zip", checksum: "573319f1eda132a25297c96a755831cd394a3adbca7d73341ae189b4fddaa247"),
        .binaryTarget(name: "DotFaceCommons", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-commons/8.6.1/DotFaceCommons.zip", checksum: "a147f2be41857464fa663e83d1e8646dd32a731b87c502d150d7a3c70a915ac0"),
        .binaryTarget(name: "DotDocumentCommons", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-document-commons/8.6.1/DotDocumentCommons.zip", checksum: "e53558d258262bdce6c1bd37cfea8b949b3fd2cf7010128260f4bce63fca262b"),
        .binaryTarget(name: "DotNfc", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-nfc/8.6.1/DotNfc.zip", checksum: "2de4b89ed5910390d6869afa6b752e3ea462b6783ed1f0b5542f07a4483a4e46"),
        .binaryTarget(name: "DotDocument", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-document/8.6.1/DotDocument.zip", checksum: "b03495f3e352126f7af758e64514455ac32dbcd369c40a6d7f36e045e211c59c"),
        .binaryTarget(name: "DotPalmCore", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-palm-core/8.6.1/DotPalmCore.zip", checksum: "1ce5b05d033ee65e824bca16deea585dcb12bedf04140f8a53813be0f436e052"),
        .binaryTarget(name: "DotPalmDetection", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-palm-detection/8.6.1/DotPalmDetection.zip", checksum: "2bc1622f171135c1331e76922c49f42d073980f51dcca650ddf61000682e5b32"),
        .binaryTarget(name: "DotFaceLite", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-lite/8.6.1/DotFaceLite.zip", checksum: "2f81bb9b4fbe36417a6fab869cdb14ced5b85a99a851a77aa125ca411a20cc63"),
        .binaryTarget(name: "DotFaceCore", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-core/8.6.1/DotFaceCore.zip", checksum: "9cbe8a42eb4c2d50637248a08dab8117a133fe7a10da5f25cf4e7e537cb63249"),
        .binaryTarget(name: "DotFaceVerification", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-verification/8.6.1/DotFaceVerification.zip", checksum: "1ff1a35e47f482dfce62a7df1d9df52219f9e3a208c669abb7cb02d7baee804f"),
        .binaryTarget(name: "DotFaceEyeGazeLiveness", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-eye-gaze-liveness/8.6.1/DotFaceEyeGazeLiveness.zip", checksum: "75ce8f246235fad6a7362b235d4d0176e26520f4bc8b7828d21f2fa9e359c772"),
        .binaryTarget(name: "DotFaceExpressionNeutral", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-expression-neutral/8.6.1/DotFaceExpressionNeutral.zip", checksum: "b125069aa6c9a4f3463471047d2328fd81714687a62f32e136d7ebe8e8abf22f"),
        .binaryTarget(name: "DotFaceDetectionFast", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-detection-fast/8.6.1/DotFaceDetectionFast.zip", checksum: "f9e1d52440d741480c640baec2f44bb34680fc72f593a660c3ec0eea655ab398"),
        .binaryTarget(name: "DotFaceBackgroundUniformity", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-background-uniformity/8.6.1/DotFaceBackgroundUniformity.zip", checksum: "0b8a4247005799dc390540c0091b7e5ed5ab5c67fc5926b8a7596bd378db2ff8"),
        .binaryTarget(name: "DotFaceDetectionBalanced", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-detection-balanced/8.6.1/DotFaceDetectionBalanced.zip", checksum: "cf1514e80a1968e0003e0815923733696221234ddc50fad887945fde07b9095b"),
        .binaryTarget(name: "DotFacePassiveLiveness", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-passive-liveness/8.6.1/DotFacePassiveLiveness.zip", checksum: "57376419c47b6b7b688c252298675239c5ff4252a74e4b9ad4d010092da7664e"),
    ]
)
