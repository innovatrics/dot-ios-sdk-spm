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
        .binaryTarget(name: "iface", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/iface/6.15.0/IFace.zip", checksum: "23b7f30a08493a5f954a28588bb0a563d4d42625c7b8b50bb39b520ff41858b6"),
        .binaryTarget(name: "innoonnxruntime", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/onnx/6.15.0/Onnx.zip", checksum: "0c9eee94333ad55799a1965469d06f41f76aeb39643caeaa42425f73465e479a"),
        .binaryTarget(name: "DotProtocolBuffers", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-protobuf/1.14.1/DotProtocolBuffers.zip", checksum: "36ab2bbaf4bc67369928c94234928ab19c21d091ba5227278912694b70471f75"),
        .binaryTarget(name: "DotOpenSSL", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-openssl/1.2.1/DotOpenSSL.zip", checksum: "c3f919ef386334b683844e077e58996705b4c6d6cd568763e21e970a82f731e9"),
        .binaryTarget(name: "DotCore", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-core/8.14.0/DotCore.zip", checksum: "ab4e9525464bb0897e11b94488c878754e1e5a0bbe9bf47fe47afa7608109931"),
        .binaryTarget(name: "DotSerialization", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-serialization/8.14.0/DotSerialization.zip", checksum: "984cdcd8b507a34cb5a3f906044ca8a1f05abce2a14c7afeef3370b9f9605eae"),
        .binaryTarget(name: "DotCapture", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-capture/8.14.0/DotCapture.zip", checksum: "9b82c4050ee21bf29fec893806067cbeb329f37884f76491e1ad338e3fe942ec"),
        .binaryTarget(name: "DotCamera", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-camera/8.14.0/DotCamera.zip", checksum: "1293db2995bf50498329752f1c411fe1026334a87385b961aedd3cad01620c4b"),
        .binaryTarget(name: "DotFaceCommons", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-commons/8.14.0/DotFaceCommons.zip", checksum: "2f1fe3c1c959dd3c4abc78a5a8be918de7e85b76197f7f1f6657009b5ee6f43c"),
        .binaryTarget(name: "DotDocumentCommons", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-document-commons/8.14.0/DotDocumentCommons.zip", checksum: "ab4ff26ad5116f6b27df2055284a8eead89e51f023f10ead0623c21b7c4450a8"),
        .binaryTarget(name: "DotNfc", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-nfc/8.14.0/DotNfc.zip", checksum: "166d958ca1d0c76c6d129e29eef24e5e6d989ef1c4706da3634e6eacab4685ab"),
        .binaryTarget(name: "DotDocument", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-document/8.14.0/DotDocument.zip", checksum: "26baf87dbe4ab0609cfa176d9ebc3e9c7dcf2d26bbf296ac1b2cdadc34c46558"),
        .binaryTarget(name: "DotPalmCore", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-palm-core/8.14.0/DotPalmCore.zip", checksum: "b4d5f6a6685fc45cdfc94b5503835513897f801df86ce9566c9bb8d6b921d693"),
        .binaryTarget(name: "DotPalmDetection", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-palm-detection/8.14.0/DotPalmDetection.zip", checksum: "2ae7d763addc7d4873a38cfde7f2bbc34ad2b1196ac4258c56a09b684346f7b2"),
        .binaryTarget(name: "DotFaceLite", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-lite/8.14.0/DotFaceLite.zip", checksum: "7b843adda1058ae60e2effd5d8bccba9c95336f6327ba5d8b3ebf58ca7122478"),
        .binaryTarget(name: "DotFaceCore", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-core/8.14.0/DotFaceCore.zip", checksum: "f957a85f4bba3fb982061d6e5cc42b44dbaf51891e21a76e367d23260150b929"),
        .binaryTarget(name: "DotFaceVerification", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-verification/8.14.0/DotFaceVerification.zip", checksum: "248c210bbf31f06b17715fe2069b0c5ff1fd8e2aa031fe6f55cc5b38a54b9c63"),
        .binaryTarget(name: "DotFaceEyeGazeLiveness", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-eye-gaze-liveness/8.14.0/DotFaceEyeGazeLiveness.zip", checksum: "25e1d7c402c1e670e53aa285a463f317cd04ed92cfb9ffdd7742a962410a2a98"),
        .binaryTarget(name: "DotFaceExpressionNeutral", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-expression-neutral/8.14.0/DotFaceExpressionNeutral.zip", checksum: "ed2d9d776026fa48c21c92e262879ba3d854e5014aac8d5d7fbf10cc7c3d67e0"),
        .binaryTarget(name: "DotFaceDetectionFast", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-detection-fast/8.14.0/DotFaceDetectionFast.zip", checksum: "ee728bfd3410e1989937a53badcfe66c44aab1ea97d82c41bf75d263e597c83b"),
        .binaryTarget(name: "DotFaceBackgroundUniformity", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-background-uniformity/8.14.0/DotFaceBackgroundUniformity.zip", checksum: "23c829742da1c1c07d0a04b9ba9a2269761cf30175735a29963026f67fda4a8f"),
        .binaryTarget(name: "DotFaceDetectionBalanced", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-detection-balanced/8.14.0/DotFaceDetectionBalanced.zip", checksum: "220b7076db0ea576c898f21ecec09310fb8367d54ce66774c569a38cb8bab60b"),
        .binaryTarget(name: "DotFacePassiveLiveness", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-passive-liveness/8.14.0/DotFacePassiveLiveness.zip", checksum: "ca94974eebebfcda2ad10ade89e267dcfa45e883fe381f742736628b69443683"),
    ]
)
