// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DotSdk",
    platforms: [.iOS(.v13)],
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
            name: "DotFingersDetection",
            targets: ["DotFingersDetection", "DotFingersCore", "DotCore", "DotSerialization", "DotCamera", "DotProtocolBuffers", "DotCapture"]),
        .library(
            name: "DotFingersTransformation",
            targets: ["DotFingersTransformation", "DotFingersCore", "DotCore", "DotSerialization", "DotCamera", "DotProtocolBuffers", "DotCapture"]),
        .library(
            name: "DotDocumentBarcode",
            targets: ["DotDocumentBarcode", "DotDocument", "DotCore", "DotCapture"]
        ),
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
        .binaryTarget(name: "iface", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/iface/6.24.0/IFace.zip", checksum: "3d9f465c571565892fcda605489a8cff049fcd6b1b004bb00fd566b70a74f588"),
        .binaryTarget(name: "innoonnxruntime", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/onnx/6.24.0/Onnx.zip", checksum: "0b60954e30c6e804b5a93ddecac07e2a3d28f0100ffdb27dd612c3b12dbf73a9"),
        .binaryTarget(name: "DotProtocolBuffers", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-protobuf/1.19.0/DotProtocolBuffers.zip", checksum: "553af45bbd86744deb53a2e489345424db1d458863e79f4b3ca3cd0ee4dfd909"),
        .binaryTarget(name: "DotOpenSSL", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-openssl/1.2.1/DotOpenSSL.zip", checksum: "c3f919ef386334b683844e077e58996705b4c6d6cd568763e21e970a82f731e9"),
        .binaryTarget(name: "DotCore", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-core/9.5.0/DotCore.zip", checksum: "140588cfda6439a33a25184502dd3e89f59fd0b89fbc88ae5ad49675e58b335c"),
        .binaryTarget(name: "DotSerialization", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-serialization/9.5.0/DotSerialization.zip", checksum: "e256242d5fca2b911242003c11b42fa1525026fffe19ee22e039293d057166ec"),
        .binaryTarget(name: "DotCapture", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-capture/9.5.0/DotCapture.zip", checksum: "126ff368b27fde1d2e1dfe77d38affacd2faab004e6243884ebe48eef0dca0ae"),
        .binaryTarget(name: "DotCamera", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-camera/9.5.0/DotCamera.zip", checksum: "8c1e86ba6a3c770fc493aeb6f1982221379b232ed36461451732494d85ead907"),
        .binaryTarget(name: "DotFaceCommons", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-commons/9.5.0/DotFaceCommons.zip", checksum: "4e1ab49e0d85d8f29d88bc8c6912dd65e947b0d743960c4962553d228a354609"),
        .binaryTarget(name: "DotDocumentCommons", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-document-commons/9.5.0/DotDocumentCommons.zip", checksum: "552e5e98429d445da9de8fa00eddf4be4a244813c0f9a378d175550e1e8d71ca"),
        .binaryTarget(name: "DotNfc", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-nfc/9.5.0/DotNfc.zip", checksum: "e4b25806d2bf49f32f5d1354da243cc5553908f2f3047edbf88a649142bb0981"),
        .binaryTarget(name: "DotDocument", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-document/9.5.0/DotDocument.zip", checksum: "0e4d474506dc247da9a36684eda24789de80a3948c43b3504eeeaa692e888e97"),
        .binaryTarget(name: "DotDocumentBarcode", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-document-barcode/9.5.0/DotDocumentBarcode.zip", checksum: "5e8cd117af2941879cd7d940d448c83739956218e22251b647c1e14bbf2be406"),
        .binaryTarget(name: "DotPalmCore", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-palm-core/9.5.0/DotPalmCore.zip", checksum: "d1a51a18fea535ec5af3098ff21c3a39a4512947589309d04101f94b026749f8"),
        .binaryTarget(name: "DotPalmDetection", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-palm-detection/9.5.0/DotPalmDetection.zip", checksum: "9d758f38e666713a0ca3b751fd63627f20539e02e2cfcc8b73e9b0db5d1924d9"),
        .binaryTarget(name: "DotFingersCore", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-fingers-core/9.5.0/DotFingersCore.zip", checksum: "d39003a8bbb630fa1c7bca5730a0e723ebdf2d5bdf923f28c9c5c167329d00e0"),
        .binaryTarget(name: "DotFingersDetection", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-fingers-detection/9.5.0/DotFingersDetection.zip", checksum: "4461639a396114937cc3f8d0db72101d12dcfe8717a04c67acc8f55f65b2c0a6"),
        .binaryTarget(name: "DotFingersTransformation", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-fingers-transformation/9.5.0/DotFingersTransformation.zip", checksum: "02a99f148018e112e2e97f18778d633749ac213aed51e312ff6ff141050a21a7"),
        .binaryTarget(name: "DotFaceLite", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-lite/9.5.0/DotFaceLite.zip", checksum: "690afe1e1413ee7e4d784bee5f046c003e99246177ddfb629786c29cd683283e"),
        .binaryTarget(name: "DotFaceCore", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-core/9.5.0/DotFaceCore.zip", checksum: "ce33a0ecf61e7f356190e7824b20847c2533b186c04797db8e4ac27443363c0f"),
        .binaryTarget(name: "DotFaceVerification", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-verification/9.5.0/DotFaceVerification.zip", checksum: "1dceed1b780d8e030cfd172c7c2d38c4e67ff3596c7128b219d817078f331240"),
        .binaryTarget(name: "DotFaceEyeGazeLiveness", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-eye-gaze-liveness/9.5.0/DotFaceEyeGazeLiveness.zip", checksum: "f96dcd4b6b05164f9140dcfa4b77aa112d3c47b4e0222b95a2dbbf71f055df9f"),
        .binaryTarget(name: "DotFaceExpressionNeutral", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-expression-neutral/9.5.0/DotFaceExpressionNeutral.zip", checksum: "b45118e15103527e803c1988eb3135719da07d2c4408d59583f04c8857a7cc4d"),
        .binaryTarget(name: "DotFaceDetectionFast", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-detection-fast/9.5.0/DotFaceDetectionFast.zip", checksum: "6f18436312fdfd404462ac3a4924888f3015438087974b44b78f0826170b4c51"),
        .binaryTarget(name: "DotFaceBackgroundUniformity", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-background-uniformity/9.5.0/DotFaceBackgroundUniformity.zip", checksum: "b9d17b7a118c9e0dd082d6e39380a2dd62aafeddf770ba300f550804e629f6ff"),
        .binaryTarget(name: "DotFaceDetectionBalanced", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-detection-balanced/9.5.0/DotFaceDetectionBalanced.zip", checksum: "40011af95559158bc068a9d03a89a9d590f99812d8c7d2422bf30c1bc1d3506f"),
        .binaryTarget(name: "DotFacePassiveLiveness", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-passive-liveness/9.5.0/DotFacePassiveLiveness.zip", checksum: "c7f7317e18e687bb470b64b8facd64d05a4758efbe6ebd46cc71d103ff004229"),
    ]
)
