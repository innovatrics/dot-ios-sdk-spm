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
            targets: ["DotNfc", "OpenSSL", "DotCore"]),
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
        .binaryTarget(name: "iface", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/iface/5.1.2/IFace.zip", checksum: "a89858f39df9cb8ce0b6656f1ad072eccd6bbecc4d17bf82955358eea7214d76"),
        .binaryTarget(name: "innoonnxruntime", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/onnx/2.1.2/Onnx.zip", checksum: "19daf2d3a8e7f3e9b1f0fd0637c14696bd8ebcca6fc0c61aead2531ab0190e2d"),
        .binaryTarget(name: "DotProtocolBuffers", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-protobuf/1.5.1/DotProtocolBuffers.zip", checksum: "e996fd02a71c8b58137fc115c30edbda129afb7f841e895fc0b1672f5abc0c50"),
        .binaryTarget(name: "OpenSSL", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-openssl/1.1.1/OpenSSL.zip", checksum: "0d34929880bce784a31e6ec462fa0f1df4b7ef5f7aed2b885d7ecb20aa12e36e"),
        .binaryTarget(name: "SamFace", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/sam-face/1.35.2/SamFace.zip", checksum: "269be21d3f5dd3251ae71e95cda9db4763efb2adc0b745f21bfabd0b49255d03"),
        .binaryTarget(name: "DotCore", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-core/6.5.2/DotCore.zip", checksum: "ed51693de38a648fe90c0514ecadfb8983c590136875108bf9e4cd8c3a44514f"),
        .binaryTarget(name: "DotCapture", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-capture/6.5.2/DotCapture.zip", checksum: "da3f34950ca69310fdb1262bb81e3ba27369f7bd80ab7629004607f2b7eb6635"),
        .binaryTarget(name: "DotCamera", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-camera/6.5.2/DotCamera.zip", checksum: "cf90ff645a4070c7ad44c54610032f6b7b846e8578983aa2bc14ae959af81f10"),
        .binaryTarget(name: "DotFaceCommons", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-commons/6.5.2/DotFaceCommons.zip", checksum: "3ab52d1471c9123e94c53f771a53660f7a384a68ed37a1026600e8bf4f0de619"),
        .binaryTarget(name: "DotNfc", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-nfc/6.5.2/DotNfc.zip", checksum: "99b5cc31c4d8a792fb6d4a6f83ad1eca3c1f02f884e3a79ecb3b525801d17a90"),
        .binaryTarget(name: "DotDocument", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-document/6.5.2/DotDocument.zip", checksum: "a8c1c2f44ce489869fca1c7dee9cee0b6b9e2ba1b10182244cd5f07a8b34504d"),
        .binaryTarget(name: "DotFaceLite", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-lite/6.5.2/DotFaceLite.zip", checksum: "b054336877e8a7c5047482d5830012b1825cdca3180002c03fef02f42770cc16"),
        .binaryTarget(name: "DotFaceCore", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-core/6.5.2/DotFaceCore.zip", checksum: "8ab53f366a1b2ebf1152d441033d7a5a0ba0441676a38bfd9b5ba1fa8e9e42ea"),
        .binaryTarget(name: "DotFaceVerification", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-verification/6.5.2/DotFaceVerification.zip", checksum: "0b31883ccdea2e2214bdd4b936f4e23011b7338d5a78a4413ca0c577ee450967"),
        .binaryTarget(name: "DotFaceEyeGazeLiveness", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-eye-gaze-liveness/6.5.2/DotFaceEyeGazeLiveness.zip", checksum: "291be5a1e014b902925593017b06c1a306a26fbf5858c44da58df38a757f7407"),
        .binaryTarget(name: "DotFaceExpressionNeutral", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-expression-neutral/6.5.2/DotFaceExpressionNeutral.zip", checksum: "cec5d0e84c7b71ece108c39fea422d30eb7da37f6c624906261a77b8d00f8f0e"),
        .binaryTarget(name: "DotFaceDetectionFast", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-detection-fast/6.5.2/DotFaceDetectionFast.zip", checksum: "39604b175edca3b14c26cb578876cd11cc0cb60f908ce67ea4889f69e6ce7b46"),
        .binaryTarget(name: "DotFaceBackgroundUniformity", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-background-uniformity/6.5.2/DotFaceBackgroundUniformity.zip", checksum: "4220fc23e0312069b8016339aa14501358cd7005460906e985f77bb14f34a9e7"),
        .binaryTarget(name: "DotFaceDetectionBalanced", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-detection-balanced/6.5.2/DotFaceDetectionBalanced.zip", checksum: "cf176d8b2d1c022a0281492c28d0981f6658ce24632672716eaac2a2bee05959"),
        .binaryTarget(name: "DotFacePassiveLiveness", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-passive-liveness/6.5.2/DotFacePassiveLiveness.zip", checksum: "624518666e160601388220360e14b5292eaf65e108281af3041efc7ec0c1ca90"),
    ]
)
