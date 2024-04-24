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
            targets: ["DotFaceLite", "SamFace", "DotProtocolBuffers", "DotCore", "DotCamera", "DotFaceCommons"]),
        .library(
            name: "DotDocument",
            targets: ["DotDocument", "sam", "DotCore", "DotCamera"]),
        .library(
            name: "DotNfc",
            targets: ["DotNfc", "OpenSSL", "DotCore"]),
        .library(
            name: "DotFaceVerification",
            targets: ["DotFaceVerification", "DotFaceCore", "iface", "innoonnxruntime", "DotProtocolBuffers", "DotCore", "DotCamera", "DotFaceCommons"]),
        .library(
            name: "DotFaceEyeGazeLiveness",
            targets: ["DotFaceEyeGazeLiveness", "DotFaceCore", "iface", "innoonnxruntime", "DotProtocolBuffers", "DotCore", "DotCamera", "DotFaceCommons"]),
        .library(
            name: "DotFaceExpressionNeutral",
            targets: ["DotFaceExpressionNeutral", "DotFaceCore", "iface", "innoonnxruntime", "DotProtocolBuffers", "DotCore", "DotCamera", "DotFaceCommons"]),
        .library(
            name: "DotFaceDetectionFast",
            targets: ["DotFaceDetectionFast", "DotFaceCore", "iface", "innoonnxruntime", "DotProtocolBuffers", "DotCore", "DotCamera", "DotFaceCommons"]),
        .library(
            name: "DotFaceBackgroundUniformity",
            targets: ["DotFaceBackgroundUniformity", "DotFaceCore", "iface", "innoonnxruntime", "DotProtocolBuffers", "DotCore", "DotCamera", "DotFaceCommons"]),
        .library(
            name: "DotFaceDetectionBalanced",
            targets: ["DotFaceDetectionBalanced", "DotFaceCore", "iface", "innoonnxruntime", "DotProtocolBuffers", "DotCore", "DotCamera", "DotFaceCommons"]),
        .library(
            name: "DotFacePassiveLiveness",
            targets: ["DotFacePassiveLiveness", "DotFaceCore", "iface", "innoonnxruntime", "DotProtocolBuffers", "DotCore", "DotCamera", "DotFaceCommons"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(name: "sam", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/sam/2.3.0/Sam.zip", checksum: "caffd31c108d9c8c0434b0e0d12ec4f8058e0dd750f10c2d85cde3b5e3b2ff01"),
        .binaryTarget(name: "iface", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/iface/5.1.2/IFace.zip", checksum: "a89858f39df9cb8ce0b6656f1ad072eccd6bbecc4d17bf82955358eea7214d76"),
        .binaryTarget(name: "innoonnxruntime", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/onnx/2.1.2/Onnx.zip", checksum: "19daf2d3a8e7f3e9b1f0fd0637c14696bd8ebcca6fc0c61aead2531ab0190e2d"),
        .binaryTarget(name: "DotProtocolBuffers", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-protobuf/1.2.1/DotProtocolBuffers.zip", checksum: "76030c39ffa66e2f16cc7ae85345141f5fd4bc2fbd71e462287ae3ac8b9a2f9b"),
        .binaryTarget(name: "OpenSSL", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-openssl/1.1.1/OpenSSL.zip", checksum: "0d34929880bce784a31e6ec462fa0f1df4b7ef5f7aed2b885d7ecb20aa12e36e"),
        .binaryTarget(name: "SamFace", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/sam-face/1.2.0/SamFace.zip", checksum: "a309d640fdf93eca446f92b1b99213395ca32631ee44d090b84453b932a9318f"),
        .binaryTarget(name: "DotCore", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-core/5.5.1/DotCore.zip", checksum: "0d5ef233b248bfe948a674b13655faf7d38ce4ae69d29028b4ef29df09486fd3"),
        .binaryTarget(name: "DotCamera", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-camera/5.5.1/DotCamera.zip", checksum: "4fd9368d1e779812dcaa7ae3224ccc5afb38926e7c49b47584d62c3330d1f5dd"),
        .binaryTarget(name: "DotFaceCommons", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-commons/5.5.1/DotFaceCommons.zip", checksum: "52ee2928fecbff24fb62ef67a4816da0f9b16ecbb296b2774b5cd87d12ff8880"),
        .binaryTarget(name: "DotNfc", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-nfc/5.5.1/DotNfc.zip", checksum: "994f34dc536c0845554a3da6dd472f4297296dbbc347c1258b5a84e094cc13f9"),
        .binaryTarget(name: "DotDocument", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-document/5.5.1/DotDocument.zip", checksum: "87797e0f1c92ce13f5edb492223cd69af37ca9563dafb9f1de008c1474d74b42"),
        .binaryTarget(name: "DotFaceLite", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-lite/5.5.1/DotFaceLite.zip", checksum: "db7eb4b2772079e5c0aac4fb9744ba0329fa06e06ca21eb973f15904a6186abb"),
        .binaryTarget(name: "DotFaceCore", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-core/5.5.1/DotFaceCore.zip", checksum: "9342fc1b6c2bdde1111439e4ebffb7a4b64de6777972474911509ed1d303ccc5"),
        .binaryTarget(name: "DotFaceVerification", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-verification/5.5.1/DotFaceVerification.zip", checksum: "c375127f7149780dcc7f48f05d13dc5dcd48508f654590279329770e5e14b14b"),
        .binaryTarget(name: "DotFaceEyeGazeLiveness", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-eye-gaze-liveness/5.5.1/DotFaceEyeGazeLiveness.zip", checksum: "e0be7da0b949e6d93249f0ac65deba96a0da4b19339b3a29a64b176e70735155"),
        .binaryTarget(name: "DotFaceExpressionNeutral", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-expression-neutral/5.5.1/DotFaceExpressionNeutral.zip", checksum: "9d2df47a932c00c464642c8380156d4780922564ae7a1f581cbe0e9b688445e7"),
        .binaryTarget(name: "DotFaceDetectionFast", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-detection-fast/5.5.1/DotFaceDetectionFast.zip", checksum: "8c499499dbaa6ae7e12857f02b87a460e43bec72ba84475f5fb3aa585e24d79a"),
        .binaryTarget(name: "DotFaceBackgroundUniformity", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-background-uniformity/5.5.1/DotFaceBackgroundUniformity.zip", checksum: "d4f8c6fd3075443687496b90d02c8fd37f7f7736885c36b36d54da8cddde85c3"),
        .binaryTarget(name: "DotFaceDetectionBalanced", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-detection-balanced/5.5.1/DotFaceDetectionBalanced.zip", checksum: "4e648179db40a0cd395e3dafc8825b7c2562d6cb0fac09a019ff3abff92833ea"),
        .binaryTarget(name: "DotFacePassiveLiveness", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-passive-liveness/5.5.1/DotFacePassiveLiveness.zip", checksum: "cb0d51ca0d85ebcafc65c1cf74de06a7136945df6420893e5e10722b0d984b67"),
    ]
)
