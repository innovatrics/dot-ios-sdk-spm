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
            targets: ["DotFaceLite", "SamFace", "DotProtocolBuffers", "DotCore", "DotCamera"]),
        .library(
            name: "DotDocument",
            targets: ["DotDocument", "sam", "DotCore", "DotCamera"]),
        .library(
            name: "DotNfc",
            targets: ["DotNfc", "OpenSSL"]),
        .library(
            name: "DotFaceVerification",
            targets: ["DotFaceVerification", "DotFaceCore", "iface", "onnxruntime", "DotCore", "DotCamera"]),
        .library(
            name: "DotFaceEyeGazeLiveness",
            targets: ["DotFaceEyeGazeLiveness", "DotFaceCore", "iface", "onnxruntime", "DotCore", "DotCamera"]),
        .library(
            name: "DotFaceExpressionNeutral",
            targets: ["DotFaceExpressionNeutral", "DotFaceCore", "iface", "onnxruntime", "DotCore", "DotCamera"]),
        .library(
            name: "DotFaceDetectionFast",
            targets: ["DotFaceDetectionFast", "DotFaceCore", "iface", "onnxruntime", "DotCore", "DotCamera"]),
        .library(
            name: "DotFaceBackgroundUniformity",
            targets: ["DotFaceBackgroundUniformity", "DotFaceCore", "iface", "onnxruntime", "DotCore", "DotCamera"]),
        .library(
            name: "DotFaceDetectionBalanced",
            targets: ["DotFaceDetectionBalanced", "DotFaceCore", "iface", "onnxruntime", "DotCore", "DotCamera"]),
        .library(
            name: "DotFacePassiveLiveness",
            targets: ["DotFacePassiveLiveness", "DotFaceCore", "iface", "onnxruntime", "DotCore", "DotCamera"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(name: "sam", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/sam/2.3.0/Sam.zip", checksum: "caffd31c108d9c8c0434b0e0d12ec4f8058e0dd750f10c2d85cde3b5e3b2ff01"),
        .binaryTarget(name: "iface", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/iface/5.0.3/IFace.zip", checksum: "df0df3790752fb74480fc04005c939f579e55a08514889db2c4613c75f1e6cd4"),
        .binaryTarget(name: "onnxruntime", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/onnx/2.0.3/Onnx.zip", checksum: "8c59acabdab063a8833523bc24c8727643dd5cc95132f9f6a0108e8123138463"),
        .binaryTarget(name: "DotProtocolBuffers", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-protobuf/1.0.0/DotProtocolBuffers.zip", checksum: "51e95643db5b407247b1173d06177406f3044d93b7a87acd2b554b6c8f026add"),
        .binaryTarget(name: "OpenSSL", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-openssl/1.1.0/OpenSSL.zip", checksum: "c241be4a102f8bc493f2e652c3e732663cbd4f6341cf65f6f6fbec720e0140d4"),
        .binaryTarget(name: "SamFace", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/sam-face/1.2.0/SamFace.zip", checksum: "a309d640fdf93eca446f92b1b99213395ca32631ee44d090b84453b932a9318f"),
        .binaryTarget(name: "DotCore", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-core/5.1.1/DotCore.zip", checksum: "3eea9827507d808e01ad4cc1ae262549e385a4228972ce23f02c082b723ffa56"),
        .binaryTarget(name: "DotCamera", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-camera/5.1.1/DotCamera.zip", checksum: "d5b2ba4871697dd67fb0efdd0c295bf49136efae3e1ca1a53713a5c8871520e8"),
        .binaryTarget(name: "DotNfc", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-nfc/5.1.1/DotNfc.zip", checksum: "12cbf150feed55c342e9d617827e55ac61f2e1bd3ca6f1831403f08fe8ef4140"),
        .binaryTarget(name: "DotDocument", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-document/5.1.1/DotDocument.zip", checksum: "9ef8ae03fd32b4e4fede1a8d827126a52308a1ef65b09773a72f32b68717430b"),
        .binaryTarget(name: "DotFaceLite", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-lite/5.1.1/DotFaceLite.zip", checksum: "f3d2a79952c445c1472b04cbfde4f2cb0d62eb3857e565bce0fd875e7a4e03e7"),
        .binaryTarget(name: "DotFaceCore", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-core/5.1.1/DotFaceCore.zip", checksum: "9a4fdbb8e5e4246ee8b8f5429dee2e71b31f68d22d9b494a4628377b6afe7dc1"),
        .binaryTarget(name: "DotFaceVerification", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-verification/5.1.1/DotFaceVerification.zip", checksum: "f097b1ad6ff266be71745bd957a8dad4ac3bb50ca539f33c3a585ea71069a414"),
        .binaryTarget(name: "DotFaceEyeGazeLiveness", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-eye-gaze-liveness/5.1.1/DotFaceEyeGazeLiveness.zip", checksum: "bffd8b55f5e43b8fea4985f65d115a934c30356821bb52847d3c2824d6a4031c"),
        .binaryTarget(name: "DotFaceExpressionNeutral", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-expression-neutral/5.1.1/DotFaceExpressionNeutral.zip", checksum: "67abae52147b30e3d82e4e460748aad1477834419efa0e9aee5db8daf1318e1f"),
        .binaryTarget(name: "DotFaceDetectionFast", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-detection-fast/5.1.1/DotFaceDetectionFast.zip", checksum: "3665d9ca33774b83fc2d205f43f119e44c070652d7521e1bb358e8fe0599bba0"),
        .binaryTarget(name: "DotFaceBackgroundUniformity", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-background-uniformity/5.1.1/DotFaceBackgroundUniformity.zip", checksum: "bd15344444383f55b95e15ead96442ca5e6c4ec7b7792c1ad28ef261e4bb377a"),
        .binaryTarget(name: "DotFaceDetectionBalanced", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-detection-balanced/5.1.1/DotFaceDetectionBalanced.zip", checksum: "2ab61b406d0ab8b7e2a1a6c5df4cd5e9a4d96b8ec929bb959c400caa3732c0a2"),
        .binaryTarget(name: "DotFacePassiveLiveness", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-passive-liveness/5.1.1/DotFacePassiveLiveness.zip", checksum: "da891d9a9b7a2786bf9ee1cf122e5df07213209c379580e07907a9c2429dd947"),
    ]
)
