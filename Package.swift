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
        .binaryTarget(name: "iface", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/iface/6.5.0/IFace.zip", checksum: "91540fd4d3cc3f8199022c5f648a10f1cf7d189bfa71522c5ff8ee064df89400"),
        .binaryTarget(name: "innoonnxruntime", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/onnx/6.5.0/Onnx.zip", checksum: "a6e77c8340f96efae0373d2412db2143f755a5fd456d1fdbf476bd96d9474b14"),
        .binaryTarget(name: "DotProtocolBuffers", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-protobuf/1.13.0/DotProtocolBuffers.zip", checksum: "38d8dd57b2b37ac9e61fdc1459601e7e4db9f859cfe4eee6b7fc84a741f26caa"),
        .binaryTarget(name: "DotOpenSSL", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-openssl/1.2.1/DotOpenSSL.zip", checksum: "c3f919ef386334b683844e077e58996705b4c6d6cd568763e21e970a82f731e9"),
        .binaryTarget(name: "DotCore", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-core/8.10.0/DotCore.zip", checksum: "7d4bb8db023c372e4ce7209f731eabe9a4f326bd7cbd5aca6c48f5e535a09ff6"),
        .binaryTarget(name: "DotSerialization", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-serialization/8.10.0/DotSerialization.zip", checksum: "f1add4bc6ff81bf1b4d56dbb2fee8a22103759b2ac102b990a2681e6287b6cd9"),
        .binaryTarget(name: "DotCapture", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-capture/8.10.0/DotCapture.zip", checksum: "beb3dfa971c0d96ba4b470118dabc7ebcfa108719dbf792946842836b0a70fd6"),
        .binaryTarget(name: "DotCamera", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-camera/8.10.0/DotCamera.zip", checksum: "763b2d383cb2a77d0f80de00c607588cf4a9677c2083a4e584ee4386fc221ff5"),
        .binaryTarget(name: "DotFaceCommons", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-commons/8.10.0/DotFaceCommons.zip", checksum: "d8aba10f9ef4e5dc770604daa59ce119aebab608e58c072e9b1144ae845fe596"),
        .binaryTarget(name: "DotDocumentCommons", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-document-commons/8.10.0/DotDocumentCommons.zip", checksum: "8594d82411d0e643b3094d880d4b2d40659a58cd731f4e1b7bf7ab362c55373c"),
        .binaryTarget(name: "DotNfc", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-nfc/8.10.0/DotNfc.zip", checksum: "00e7680063c4b38302ae47be621f34344d423cbc828dfce6ac913c972b208f07"),
        .binaryTarget(name: "DotDocument", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-document/8.10.0/DotDocument.zip", checksum: "e1c667bf44aaabf7c739d1345fd0cfa816bbf721b4575ce79fe6623bc45bda6e"),
        .binaryTarget(name: "DotPalmCore", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-palm-core/8.10.0/DotPalmCore.zip", checksum: "b0dccf341754f3a116eef76591432dca02c4d0aa65a1777dfe0074a48ea9472e"),
        .binaryTarget(name: "DotPalmDetection", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-palm-detection/8.10.0/DotPalmDetection.zip", checksum: "4a7cb02d6762a95ad0e7126a814368cea55d33cd334a864911b6f482c4c3a734"),
        .binaryTarget(name: "DotFaceLite", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-lite/8.10.0/DotFaceLite.zip", checksum: "947f5d66e9d9ad12d9fc3522585a11c569cee92e5eec2aa3e6b452e39b360bb3"),
        .binaryTarget(name: "DotFaceCore", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-core/8.10.0/DotFaceCore.zip", checksum: "e8767f435e76ddad3b0004d2ddd8e530d33c2df5665bc5816d26b14843ab4708"),
        .binaryTarget(name: "DotFaceVerification", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-verification/8.10.0/DotFaceVerification.zip", checksum: "969401cbe01b9f53da54e3bc187ca423ae5aa86343391e0d22f6f7a6a6bf3738"),
        .binaryTarget(name: "DotFaceEyeGazeLiveness", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-eye-gaze-liveness/8.10.0/DotFaceEyeGazeLiveness.zip", checksum: "fa4988821d00703c05dfdebdaa4b64bf0346c22b6ed4aa371b5e99095d7fc595"),
        .binaryTarget(name: "DotFaceExpressionNeutral", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-expression-neutral/8.10.0/DotFaceExpressionNeutral.zip", checksum: "0755c27a2e3bd5187dcb0f4f9219975a5d8b40d6c20f65ff37b9411273829fe9"),
        .binaryTarget(name: "DotFaceDetectionFast", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-detection-fast/8.10.0/DotFaceDetectionFast.zip", checksum: "cc53a61ebe77d2d035f7ec06672c5dab729698584b24d3e045033f58a6db9d7a"),
        .binaryTarget(name: "DotFaceBackgroundUniformity", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-background-uniformity/8.10.0/DotFaceBackgroundUniformity.zip", checksum: "41b726e669b61bc8388e4023900da0e3e3252195273be3bfce26f0414b202457"),
        .binaryTarget(name: "DotFaceDetectionBalanced", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-detection-balanced/8.10.0/DotFaceDetectionBalanced.zip", checksum: "0fea2ecbece7caad232d84dfb5ab4ba3f1734276ea109618a1c64e0caf6d6283"),
        .binaryTarget(name: "DotFacePassiveLiveness", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-passive-liveness/8.10.0/DotFacePassiveLiveness.zip", checksum: "18299eff7d5e859c7a21e9f3df3d47637c3287e409cc54427734b6028da71279"),
    ]
)
