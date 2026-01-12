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
        .binaryTarget(name: "iface", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/iface/6.18.0/IFace.zip", checksum: "0f61225c8917ceacc617a8ff97e84c71675f059edf79e2df6f4f65408c7a6182"),
        .binaryTarget(name: "innoonnxruntime", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/onnx/6.18.0/Onnx.zip", checksum: "e7c41269f832068aa3cd3d2c2319a71c665ccff4b7f2e8da5334a87c07414f9b"),
        .binaryTarget(name: "DotProtocolBuffers", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-protobuf/1.16.2/DotProtocolBuffers.zip", checksum: "9b0ce3bfb41f2e53fb1c1b3ac4feb49ca800995c8ffd57b1a64635461f4a3220"),
        .binaryTarget(name: "DotOpenSSL", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-openssl/1.2.1/DotOpenSSL.zip", checksum: "c3f919ef386334b683844e077e58996705b4c6d6cd568763e21e970a82f731e9"),
        .binaryTarget(name: "DotCore", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-core/9.0.1/DotCore.zip", checksum: "ca4c1261430d1728b085976d630594222d4d74737cf40944da5d28d4f0a2a068"),
        .binaryTarget(name: "DotSerialization", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-serialization/9.0.1/DotSerialization.zip", checksum: "00375df0c4d46bbb25f274f492d74db997b2ad41fcd44f6199ac6ab63a71ca7e"),
        .binaryTarget(name: "DotCapture", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-capture/9.0.1/DotCapture.zip", checksum: "5d88aadda283fe385fd5ecba3297d48841d635bff85c804ccd2728aeabaf9685"),
        .binaryTarget(name: "DotCamera", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-camera/9.0.1/DotCamera.zip", checksum: "d83f2bdda64b44ce68c0b4baaaa13b88fc6bd631fceb138f5cd208db8809c1f4"),
        .binaryTarget(name: "DotFaceCommons", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-commons/9.0.1/DotFaceCommons.zip", checksum: "37ff59805736cb6b6d4794919b6315558c86e12c6b98e5d5742330364b095119"),
        .binaryTarget(name: "DotDocumentCommons", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-document-commons/9.0.1/DotDocumentCommons.zip", checksum: "e04e01d8438bbd22494cf07d1071d548665fa8cbeda64cd5dc6144f09ef2c1c8"),
        .binaryTarget(name: "DotNfc", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-nfc/9.0.1/DotNfc.zip", checksum: "d0274b4bb5ae532c8b7bbaa7153a74568547a8bd982aabe63512aa37291412fa"),
        .binaryTarget(name: "DotDocument", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-document/9.0.1/DotDocument.zip", checksum: "00bd1207f39d53a4b97005b26d7718953742cb4107b436fec51c9be87745d74b"),
        .binaryTarget(name: "DotPalmCore", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-palm-core/9.0.1/DotPalmCore.zip", checksum: "9354a10652a3c4ece6a5fed3cc8cade43363ce42dd31d5bd135cf68d1c53def8"),
        .binaryTarget(name: "DotPalmDetection", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-palm-detection/9.0.1/DotPalmDetection.zip", checksum: "3c1486a30950446fa669dbe5895bf07d5c81f694e66a6062d109c03bf2055cc2"),
        .binaryTarget(name: "DotFaceLite", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-lite/9.0.1/DotFaceLite.zip", checksum: "b412753185ca7bdba8ca712542b88ce9ab4b3add868a5ce063aa318044ab9296"),
        .binaryTarget(name: "DotFaceCore", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-core/9.0.1/DotFaceCore.zip", checksum: "73b01223dc70bdb2bba425f5fccc7b3a54c4ab27e814ebe1b883e5ba6138ba61"),
        .binaryTarget(name: "DotFaceVerification", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-verification/9.0.1/DotFaceVerification.zip", checksum: "195b123b1c3bd8c45327fcf5a832100e272466340422445731284e27399c82b8"),
        .binaryTarget(name: "DotFaceEyeGazeLiveness", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-eye-gaze-liveness/9.0.1/DotFaceEyeGazeLiveness.zip", checksum: "23c6a6ea2621d8f1e114f9d5889f22e47df02a7e4567a140d0129bc849692d94"),
        .binaryTarget(name: "DotFaceExpressionNeutral", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-expression-neutral/9.0.1/DotFaceExpressionNeutral.zip", checksum: "7cb947fb337ac93cb5a28b9f8760c0d5112a7cf5319ac3272fb7c11d8f37e8eb"),
        .binaryTarget(name: "DotFaceDetectionFast", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-detection-fast/9.0.1/DotFaceDetectionFast.zip", checksum: "4aa4360c4a65c3d8a6f26288de72206aaaf625b5938289b0acf85ca0e214f96e"),
        .binaryTarget(name: "DotFaceBackgroundUniformity", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-background-uniformity/9.0.1/DotFaceBackgroundUniformity.zip", checksum: "38ed85d726df5bccadc898e2a09eeef48135012edaa4fe1f51b33dc3524a95df"),
        .binaryTarget(name: "DotFaceDetectionBalanced", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-detection-balanced/9.0.1/DotFaceDetectionBalanced.zip", checksum: "fba3e4c3b8164e72311c20e9342c6487fe6bc39547cd3c3d99fe369bd0194008"),
        .binaryTarget(name: "DotFacePassiveLiveness", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-passive-liveness/9.0.1/DotFacePassiveLiveness.zip", checksum: "6e71be4acbb478861f65c2bf0528c290cc8093b30c51b601b0d9c0f0d04bea50"),
    ]
)
