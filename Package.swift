// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DotSdk",
    platforms: [.iOS(.v13)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        // Core substrate without any recognition module. DotFaceCommons is bundled intentionally: it is imported by the
        // dot_core_ios Flutter plugin and aligns with the DotShared -> DotCore unification.
        .library(
            name: "DotCore",
            targets: ["DotCore", "DotSerialization", "DotProtocolBuffers", "DotCamera", "DotCapture", "DotFaceCommons"]),
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
            name: "DotFaceCore",
            targets: ["DotFaceCore", "iface", "innoonnxruntime", "DotProtocolBuffers", "DotCore", "DotSerialization", "DotCamera", "DotFaceCommons", "DotCapture"]),
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
        .binaryTarget(name: "DotCore", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-core/9.10.0/DotCore.zip", checksum: "28641e1aac0c1fc703be2dd589a6cd1e25b3829cdad6dfc8ad4fdaecd171aab0"),
        .binaryTarget(name: "DotSerialization", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-serialization/9.10.0/DotSerialization.zip", checksum: "0a1e8886cd4cf5ec04b19881af9616eaf89c3033d6d8d637b877b640eb7b69e7"),
        .binaryTarget(name: "DotCapture", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-capture/9.10.0/DotCapture.zip", checksum: "97b420fa0858b1adfc77950f3ac7b46f94b0893c78c0aa267932f4525f6a7c99"),
        .binaryTarget(name: "DotCamera", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-camera/9.10.0/DotCamera.zip", checksum: "ea093cfbae3be0f05e495b54bf86026ddb4ffdbed5f3420d9126c217c49baf1d"),
        .binaryTarget(name: "DotFaceCommons", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-commons/9.10.0/DotFaceCommons.zip", checksum: "8ded5fd0086b2a32dd8b5a4ef9cd17928bb7a6940d16f8aff74e2507d0cc18ba"),
        .binaryTarget(name: "DotDocumentCommons", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-document-commons/9.10.0/DotDocumentCommons.zip", checksum: "f22602ec3fb9721de8159ea6889939c7808252ce443003613023eb164ca032c0"),
        .binaryTarget(name: "DotNfc", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-nfc/9.10.0/DotNfc.zip", checksum: "06b81094a829b564a8d6abe8a70c5c07fa993ec249f8a6c4f8080ac5387ed49d"),
        .binaryTarget(name: "DotDocument", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-document/9.10.0/DotDocument.zip", checksum: "f3113b7c31b8dad1f76d0f529f9a5af1d3c70b62d36ed8cd62657f6a1207a589"),
        .binaryTarget(name: "DotDocumentBarcode", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-document-barcode/9.10.0/DotDocumentBarcode.zip", checksum: "ba43aa86366ff9d708fd5eb7183870524516f1f55080eb9fdec5ff4c602353cd"),
        .binaryTarget(name: "DotPalmCore", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-palm-core/9.10.0/DotPalmCore.zip", checksum: "8694e0e0d14c86dadf430bb364af9a466236d5570b1284cd64372055879d7632"),
        .binaryTarget(name: "DotPalmDetection", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-palm-detection/9.10.0/DotPalmDetection.zip", checksum: "41318eeaf34dc9f0c54f1ff63a5c89a1bc66797154888c02d9b288a81549624c"),
        .binaryTarget(name: "DotFingersCore", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-fingers-core/9.10.0/DotFingersCore.zip", checksum: "6d6e00fed1593f59fdc9b38853121de371e93811cc7d4ddf716df225e1ab2129"),
        .binaryTarget(name: "DotFingersDetection", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-fingers-detection/9.10.0/DotFingersDetection.zip", checksum: "948122b95d8ed73543078fbe360bf3854f76ee551970178d81b8f1d0da607259"),
        .binaryTarget(name: "DotFingersTransformation", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-fingers-transformation/9.10.0/DotFingersTransformation.zip", checksum: "c24d9c6963450edfe3053a9916c555f690b810940cca2edde6024f915ac7498b"),
        .binaryTarget(name: "DotFaceLite", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-lite/9.10.0/DotFaceLite.zip", checksum: "6ec706d0391285b5f71398455ee0ba920cd1a08c295d760f26457e8ae529169a"),
        .binaryTarget(name: "DotFaceCore", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-core/9.10.0/DotFaceCore.zip", checksum: "132882d6e5615214a7409ec35d1d42bb8cebb521e24dfa7968fe3bc4072b6478"),
        .binaryTarget(name: "DotFaceVerification", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-verification/9.10.0/DotFaceVerification.zip", checksum: "3dc1a0e5100d8b5c0abc8afdf60843ff5d18ba923b892d02baa665edff2e6a4a"),
        .binaryTarget(name: "DotFaceEyeGazeLiveness", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-eye-gaze-liveness/9.10.0/DotFaceEyeGazeLiveness.zip", checksum: "9e491c401c6b4f2aed61d7b082c56204f7eeb5a68689eb896b62c7a34e2d582a"),
        .binaryTarget(name: "DotFaceExpressionNeutral", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-expression-neutral/9.10.0/DotFaceExpressionNeutral.zip", checksum: "22bcf340c7acf637a92757a170c589a1c2c2cb919cc8ecc9d5daf83b27eebfa9"),
        .binaryTarget(name: "DotFaceDetectionFast", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-detection-fast/9.10.0/DotFaceDetectionFast.zip", checksum: "ed3897874886c221650d7003671a16ccbed752b76c7085b9287bb0791ade03d7"),
        .binaryTarget(name: "DotFaceBackgroundUniformity", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-background-uniformity/9.10.0/DotFaceBackgroundUniformity.zip", checksum: "56c2214094e4d130a42431c9ba7d9e86adcf73674f7a07ab0502e2553dc5e6f1"),
        .binaryTarget(name: "DotFaceDetectionBalanced", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-detection-balanced/9.10.0/DotFaceDetectionBalanced.zip", checksum: "0c8f114381b3b2d1334abb18f94378f0f2b230a3ad47dae91bc5268a162d03c8"),
        .binaryTarget(name: "DotFacePassiveLiveness", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-passive-liveness/9.10.0/DotFacePassiveLiveness.zip", checksum: "98d91d1c7ef4a7b1d6436e7c1c6f494aa9aca7f2accab189493ad0986ff22249"),
    ]
)
