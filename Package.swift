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
        .binaryTarget(name: "DotProtocolBuffers", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-protobuf/1.3.0/DotProtocolBuffers.zip", checksum: "22732f3f90fe82a6cdb0aea7d8a8390ec840517b76e0764cfda8ecb889b4276e"),
        .binaryTarget(name: "OpenSSL", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-openssl/1.1.0/OpenSSL.zip", checksum: "c241be4a102f8bc493f2e652c3e732663cbd4f6341cf65f6f6fbec720e0140d4"),
        .binaryTarget(name: "SamFace", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/sam-face/1.2.0/SamFace.zip", checksum: "a309d640fdf93eca446f92b1b99213395ca32631ee44d090b84453b932a9318f"),
        .binaryTarget(name: "DotCore", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-core/6.1.0/DotCore.zip", checksum: "842bbdb32afaa5781ca3702a123e0a031238d566193b007432f31f3e046acff2"),
        .binaryTarget(name: "DotCamera", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-camera/6.1.0/DotCamera.zip", checksum: "ac4d7b6b341cdd1d5817bff54b696797e1b8b497f979e5c49e48fd07d720eaed"),
        .binaryTarget(name: "DotFaceCommons", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-commons/6.1.0/DotFaceCommons.zip", checksum: "1b3194ec4f717677530136ed34fd389874cbfbb08392102e82b376c8627f439a"),
        .binaryTarget(name: "DotNfc", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-nfc/6.1.0/DotNfc.zip", checksum: "dacca9a1d963cf16f97212e8744df990818954f4d8d055ac64b3d75a047d5101"),
        .binaryTarget(name: "DotDocument", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-document/6.1.0/DotDocument.zip", checksum: "0fe070678e62bc119630ce73e47c2592b7d1f98be57430b92244f0bd272c82c6"),
        .binaryTarget(name: "DotFaceLite", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-lite/6.1.0/DotFaceLite.zip", checksum: "474ac9c098cd09c93cace8cca0c92c8d070f461a7a0eef82384dd50deffd59b8"),
        .binaryTarget(name: "DotFaceCore", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-core/6.1.0/DotFaceCore.zip", checksum: "ed4ae59069a8f3225d5d84edb6229bf8df034fbe2a7d3715c1f636278beed959"),
        .binaryTarget(name: "DotFaceVerification", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-verification/6.1.0/DotFaceVerification.zip", checksum: "f3e500990fc39f7586108f959860d5da9c0d16146b2eff1b4ea28697b6ee0234"),
        .binaryTarget(name: "DotFaceEyeGazeLiveness", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-eye-gaze-liveness/6.1.0/DotFaceEyeGazeLiveness.zip", checksum: "1b781d23014833952edc8a40f6987d4ead1ce2e63986e6d7ea38e92ad8511795"),
        .binaryTarget(name: "DotFaceExpressionNeutral", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-expression-neutral/6.1.0/DotFaceExpressionNeutral.zip", checksum: "5860e9e9e422be20e9d71314d89c462c5993329a6f373fd7b74895f16b898d41"),
        .binaryTarget(name: "DotFaceDetectionFast", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-detection-fast/6.1.0/DotFaceDetectionFast.zip", checksum: "b47cf69fdfa528388d4d81a9e5882668d010dd3e67d06a76d7fc7bbfbd557a27"),
        .binaryTarget(name: "DotFaceBackgroundUniformity", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-background-uniformity/6.1.0/DotFaceBackgroundUniformity.zip", checksum: "fe7a01cdbe4e4c2fd233ef55b57b2e4a44ef9fbeba63375b092f97170ecd668c"),
        .binaryTarget(name: "DotFaceDetectionBalanced", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-detection-balanced/6.1.0/DotFaceDetectionBalanced.zip", checksum: "78f1b86e74877c45ffcc5d838e9144ae287e0567b603dfdd9c46e84d788a127c"),
        .binaryTarget(name: "DotFacePassiveLiveness", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-passive-liveness/6.1.0/DotFacePassiveLiveness.zip", checksum: "ef3219a5bb201bf7b829b104676f7f381d0b6868a1755ecef8cd6ab40f059b5b"),
    ]
)
