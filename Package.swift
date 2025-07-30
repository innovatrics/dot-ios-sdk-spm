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
        .binaryTarget(name: "iface", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/iface/6.17.0/IFace.zip", checksum: "7ca7b4897fa18a874ac85cf357903d274488e731adddd7922c65803e59ce501e"),
        .binaryTarget(name: "innoonnxruntime", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/onnx/6.17.0/Onnx.zip", checksum: "d92eebfb8bff0e5c8e9a0bac18ad53892fcf8d129850a978800f79a204a7a36b"),
        .binaryTarget(name: "DotProtocolBuffers", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-protobuf/1.14.1/DotProtocolBuffers.zip", checksum: "36ab2bbaf4bc67369928c94234928ab19c21d091ba5227278912694b70471f75"),
        .binaryTarget(name: "DotOpenSSL", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-openssl/1.2.1/DotOpenSSL.zip", checksum: "c3f919ef386334b683844e077e58996705b4c6d6cd568763e21e970a82f731e9"),
        .binaryTarget(name: "DotCore", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-core/8.14.1/DotCore.zip", checksum: "8c3170168b9bf583643caef2d034898371b5eb789c26ae939a87c9b1d56bca4b"),
        .binaryTarget(name: "DotSerialization", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-serialization/8.14.1/DotSerialization.zip", checksum: "b369f212c45278ad13e3e19ef073b83b64bc568d8df904abe5e671613fe7b294"),
        .binaryTarget(name: "DotCapture", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-capture/8.14.1/DotCapture.zip", checksum: "b9e1e4cb1ae4a46b1e64852f7440d52eff23931c2cac9d33692a200c3b1a9328"),
        .binaryTarget(name: "DotCamera", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-camera/8.14.1/DotCamera.zip", checksum: "fbd5c5446876fa68a3aa03c2539cb581cd55467bb1cb2aa126cb54d961f84ffc"),
        .binaryTarget(name: "DotFaceCommons", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-commons/8.14.1/DotFaceCommons.zip", checksum: "f65ade7baf55a4d02b66725d9ae36794eab3022cd927025b320c14119da9a89d"),
        .binaryTarget(name: "DotDocumentCommons", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-document-commons/8.14.1/DotDocumentCommons.zip", checksum: "3899e6bbb82598915c763defe57013ca77ea1c6ea2c31264e06693ea06a2587a"),
        .binaryTarget(name: "DotNfc", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-nfc/8.14.1/DotNfc.zip", checksum: "dba7e687919780f416b7f9d96857d3a77b94681d5f6ea410217975b40fad2a81"),
        .binaryTarget(name: "DotDocument", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-document/8.14.1/DotDocument.zip", checksum: "259c9b188369a90d02f8fc05aea1b8db29171b62e962e369c8c876a756834803"),
        .binaryTarget(name: "DotPalmCore", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-palm-core/8.14.1/DotPalmCore.zip", checksum: "1ba0b2cb3569bfb1a058055324d3e2a3dc904f4678a9ee2b28a9d4b9290d57b8"),
        .binaryTarget(name: "DotPalmDetection", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-palm-detection/8.14.1/DotPalmDetection.zip", checksum: "49e7cd34cc37652cdd6fba1341ebf0b7344cb045923504f9280f160a29bcb2e6"),
        .binaryTarget(name: "DotFaceLite", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-lite/8.14.1/DotFaceLite.zip", checksum: "82c72c0cfb03a5cc408c95bd0ddaa0f7091b245ba9965439d25887e49ed21afe"),
        .binaryTarget(name: "DotFaceCore", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-core/8.14.1/DotFaceCore.zip", checksum: "43aa3d560030775e60c7690f521b0a7991938277b01f9839dfe0c4d5315a5b61"),
        .binaryTarget(name: "DotFaceVerification", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-verification/8.14.1/DotFaceVerification.zip", checksum: "76d277f9a2226936c8c3fa23c51cc1f9b0337471d6c3153d4dc7367f5d6f99f5"),
        .binaryTarget(name: "DotFaceEyeGazeLiveness", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-eye-gaze-liveness/8.14.1/DotFaceEyeGazeLiveness.zip", checksum: "0ccc888d6cc2d717b7ac50d05fcd7d7d5f3de6fe7a27f3d396f87f7edd36e915"),
        .binaryTarget(name: "DotFaceExpressionNeutral", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-expression-neutral/8.14.1/DotFaceExpressionNeutral.zip", checksum: "5e09b34e94dde730b60a4aa5c4cdb979bfd1b43106cf047b453d27c7df6f53d5"),
        .binaryTarget(name: "DotFaceDetectionFast", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-detection-fast/8.14.1/DotFaceDetectionFast.zip", checksum: "7dfbf72fd60dc2243e772654df85321867cf32d984bca09f85753f09b9357fb0"),
        .binaryTarget(name: "DotFaceBackgroundUniformity", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-background-uniformity/8.14.1/DotFaceBackgroundUniformity.zip", checksum: "2c020418e6aee321215666aa62d003a334ef348a41859126b6ef3b1194bd4dc8"),
        .binaryTarget(name: "DotFaceDetectionBalanced", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-detection-balanced/8.14.1/DotFaceDetectionBalanced.zip", checksum: "d7d882fd20de5e87ae12e0a875eb8975fa008fd4cb9a3551f4a1074ba25649c1"),
        .binaryTarget(name: "DotFacePassiveLiveness", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-passive-liveness/8.14.1/DotFacePassiveLiveness.zip", checksum: "ab7e4745faa5036a7351286b7760335b562f8092b10cb6e6c6cf7c04016a38f9"),
    ]
)
