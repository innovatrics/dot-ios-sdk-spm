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
        .binaryTarget(name: "DotCore", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-core/5.1.0/DotCore.zip", checksum: "b74bdd8324856fcfb93baffd5defdc0787b0c3ba7a8529a049c5e312ae468b6c"),
        .binaryTarget(name: "DotCamera", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-camera/5.1.0/DotCamera.zip", checksum: "ca74f08fce72f58b4edf611c0d120e9ed4043b5f2dfa731f29052a74137f7bbf"),
        .binaryTarget(name: "DotNfc", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-nfc/5.1.0/DotNfc.zip", checksum: "5c041af9e494b831d219bd657ea540bfc0fd0e0fe4cba011569e4001312ed083"),
        .binaryTarget(name: "DotDocument", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-document/5.1.0/DotDocument.zip", checksum: "02464594584903e8ad2698b3325f22ecc29ec8225d865f25f9c540ce4cbf6f89"),
        .binaryTarget(name: "DotFaceLite", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-lite/5.1.0/DotFaceLite.zip", checksum: "34249a709549b7fc68d876b71572bce5938201e240265a942795e2a3171be04a"),
        .binaryTarget(name: "DotFaceCore", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-core/5.1.0/DotFaceCore.zip", checksum: "2a76e7cde338bda1f7e7ebc090b452675c278b19850242a7e0d33bf120e02a68"),
        .binaryTarget(name: "DotFaceVerification", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-verification/5.1.0/DotFaceVerification.zip", checksum: "defb247c5c8f71d8abbea42f29e8bde8fd91b5d3071d34829c75ac2595c45140"),
        .binaryTarget(name: "DotFaceEyeGazeLiveness", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-eye-gaze-liveness/5.1.0/DotFaceEyeGazeLiveness.zip", checksum: "4f10099656dfe8775c13ad52735b07497394d2bdda0e3bd967429e51771da927"),
        .binaryTarget(name: "DotFaceExpressionNeutral", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-expression-neutral/5.1.0/DotFaceExpressionNeutral.zip", checksum: "1da4fb60bce3934e39d85a417805fc84f09743268519f795761f048b695a8617"),
        .binaryTarget(name: "DotFaceDetectionFast", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-detection-fast/5.1.0/DotFaceDetectionFast.zip", checksum: "1a094e496fc10a807ef523bf4a6634f2991d072d342ce1d34dfc14c69853843d"),
        .binaryTarget(name: "DotFaceBackgroundUniformity", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-background-uniformity/5.1.0/DotFaceBackgroundUniformity.zip", checksum: "7b0e8e2f48f4ab2b797b0bc016c053fae4c4f662c10b4fe71949cf312b6b9eed"),
        .binaryTarget(name: "DotFaceDetectionBalanced", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-detection-balanced/5.1.0/DotFaceDetectionBalanced.zip", checksum: "f809cc88f8e3cbbbe3394dbb77f2d78a33ce4fde6ff61f2154c0feb3de495624"),
        .binaryTarget(name: "DotFacePassiveLiveness", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-passive-liveness/5.1.0/DotFacePassiveLiveness.zip", checksum: "e4f6059a0ea1e5addb4118d2647f385612ca37f9f7716de98c6ff09ba9d38057"),
    ]
)
