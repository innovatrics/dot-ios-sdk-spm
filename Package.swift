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
        .binaryTarget(name: "iface", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/iface/5.1.1/IFace.zip", checksum: "f301283d9323db0fc8d6e7a15ffdf3853f59f8e079ba238a73b459bf556deeb6"),
        .binaryTarget(name: "innoonnxruntime", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/onnx/2.1.1/Onnx.zip", checksum: "6fd0929999a977b36e09728c482c0b95a173edc71e1f262be5ae101609bdc9cf"),
        .binaryTarget(name: "DotProtocolBuffers", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-protobuf/1.2.0/DotProtocolBuffers.zip", checksum: "38b46ef68d06888215b7a0840876bdf77690e26d8afc2dbef2f9cd08a6180e38"),
        .binaryTarget(name: "OpenSSL", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-openssl/1.1.0/OpenSSL.zip", checksum: "c241be4a102f8bc493f2e652c3e732663cbd4f6341cf65f6f6fbec720e0140d4"),
        .binaryTarget(name: "SamFace", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/sam-face/1.2.0/SamFace.zip", checksum: "a309d640fdf93eca446f92b1b99213395ca32631ee44d090b84453b932a9318f"),
        .binaryTarget(name: "DotCore", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-core/5.3.0/DotCore.zip", checksum: "cd6f62d15b4b3bd75f24d5598d2eeba614ab984fb302e6f42a3a2cb8fcdd0755"),
        .binaryTarget(name: "DotCamera", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-camera/5.3.0/DotCamera.zip", checksum: "a9170e991b746dcc585fd84c4190aaacbab58a26aa368a70edc497817c0cc8cf"),
        .binaryTarget(name: "DotFaceCommons", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-commons/5.3.0/DotFaceCommons.zip", checksum: "ce71627cc0c748e43fa8ac58f8c7be437ff2ffab8ab958218959d098aebe1d59"),
        .binaryTarget(name: "DotNfc", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-nfc/5.3.0/DotNfc.zip", checksum: "48ad6684777c3dffb3e2707fc6aa034cf312706a7ef3036ac75e44304ef501fb"),
        .binaryTarget(name: "DotDocument", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-document/5.3.0/DotDocument.zip", checksum: "d0c9f6b64da435417a6a9c4e32362cd776ed30bfa0ad640cca031f5305f46d79"),
        .binaryTarget(name: "DotFaceLite", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-lite/5.3.0/DotFaceLite.zip", checksum: "d556de1f373eab08676d220f3481fa35d157f03745d0039439acd44668058d06"),
        .binaryTarget(name: "DotFaceCore", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-core/5.3.0/DotFaceCore.zip", checksum: "287c02ad474f11918b4c61baf93cc923372f901698e63bd7c96828ff70a236eb"),
        .binaryTarget(name: "DotFaceVerification", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-verification/5.3.0/DotFaceVerification.zip", checksum: "28e4e18b44a507d48815991b52aa349df0cad647828b2fdc188639bdf02ec97e"),
        .binaryTarget(name: "DotFaceEyeGazeLiveness", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-eye-gaze-liveness/5.3.0/DotFaceEyeGazeLiveness.zip", checksum: "c5711f96b93feefb41eb49558e5c7c599b2e863647b524b661f3b81fcf579dac"),
        .binaryTarget(name: "DotFaceExpressionNeutral", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-expression-neutral/5.3.0/DotFaceExpressionNeutral.zip", checksum: "6157108446adac56197b163dce6a95aedb2dd595f56734cb472d233ac7f55365"),
        .binaryTarget(name: "DotFaceDetectionFast", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-detection-fast/5.3.0/DotFaceDetectionFast.zip", checksum: "fc62b056769cca0227d363199dbd6320c5ef0a0c857cf798bea128af7e580bb7"),
        .binaryTarget(name: "DotFaceBackgroundUniformity", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-background-uniformity/5.3.0/DotFaceBackgroundUniformity.zip", checksum: "0649d347e6879e6d145f227062759ef54d298e051811c566c0e78c403fcccb54"),
        .binaryTarget(name: "DotFaceDetectionBalanced", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-detection-balanced/5.3.0/DotFaceDetectionBalanced.zip", checksum: "c35f9533274e5b661b18a5ed153df2c8cd85570f61a67dc07d9747387c991b6d"),
        .binaryTarget(name: "DotFacePassiveLiveness", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-passive-liveness/5.3.0/DotFacePassiveLiveness.zip", checksum: "d17743f257e7525a75f771c2354bab025113c98717acdfe46ae4fdce20fa3d21"),
    ]
)
