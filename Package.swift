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
        .binaryTarget(name: "DotCore", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-core/9.11.0/DotCore.zip", checksum: "4ce00da41ebe73d304366991ab06ea350d6640f7108cb12148a3dea10f6e2649"),
        .binaryTarget(name: "DotSerialization", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-serialization/9.11.0/DotSerialization.zip", checksum: "c8e97d1b60b523347d6a4b3924c00064305c88ade8c947c1f91333f08694a85c"),
        .binaryTarget(name: "DotCapture", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-capture/9.11.0/DotCapture.zip", checksum: "64c60d9f3c575ca1576c516332d72b019b76fe873fa33bfccb2ec156c9557720"),
        .binaryTarget(name: "DotCamera", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-camera/9.11.0/DotCamera.zip", checksum: "edb134cf203e7ec9a340c46d9d16bb0fa88b3ed9e23f735b11f7dacd1a56f926"),
        .binaryTarget(name: "DotFaceCommons", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-commons/9.11.0/DotFaceCommons.zip", checksum: "23172b12d56b79ffcaa9310997ce6f3d57b29feb00c209cc5094865333ed073c"),
        .binaryTarget(name: "DotDocumentCommons", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-document-commons/9.11.0/DotDocumentCommons.zip", checksum: "ae32e024bc94ac4adc0fe1fa6e55fc9dd5d76bc0b74dbdd7c725236378f4bb01"),
        .binaryTarget(name: "DotNfc", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-nfc/9.11.0/DotNfc.zip", checksum: "d9b5048324495fef37cf352a99566c9a2e6d31cc5e5925560329aee8a8ab1222"),
        .binaryTarget(name: "DotDocument", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-document/9.11.0/DotDocument.zip", checksum: "3130c0f787348397f70b18399b64f24b5517fe439608fa4bd9f57cd1227e1ffd"),
        .binaryTarget(name: "DotDocumentBarcode", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-document-barcode/9.11.0/DotDocumentBarcode.zip", checksum: "786813e4060270a73d7e55baae9d67215d519ce0b4622443c8827b0dd050176d"),
        .binaryTarget(name: "DotPalmCore", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-palm-core/9.11.0/DotPalmCore.zip", checksum: "ce3fd078f51c100c9c5eb1f72c6bf8152b2e88890f08ee18e1234af9abaf49e4"),
        .binaryTarget(name: "DotPalmDetection", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-palm-detection/9.11.0/DotPalmDetection.zip", checksum: "be2b0500695fba60c9ac705b246fbabffcdd6298479ab4f9bb2f09b3de260104"),
        .binaryTarget(name: "DotFingersCore", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-fingers-core/9.11.0/DotFingersCore.zip", checksum: "fdd1a16baefff068fd038240f75bbdabc90949b6ad358d1700aa945132d099f3"),
        .binaryTarget(name: "DotFingersDetection", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-fingers-detection/9.11.0/DotFingersDetection.zip", checksum: "eabcb9081488d23b54270da3a38d97f9b2dc246191467ce3d25d5be4d2e363aa"),
        .binaryTarget(name: "DotFingersTransformation", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-fingers-transformation/9.11.0/DotFingersTransformation.zip", checksum: "f11bbe144d4af6fb064ee1653738f756763e0a501e1ce6bd3f4a49f53a099b79"),
        .binaryTarget(name: "DotFaceLite", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-lite/9.11.0/DotFaceLite.zip", checksum: "55f80b6f86b25f414910e9b5c60423c766a7de37fc33e3a7dab53e70d9eda759"),
        .binaryTarget(name: "DotFaceCore", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-core/9.11.0/DotFaceCore.zip", checksum: "cc460b46927042cfe9e7271430a7a439d300527d10d2f178306cfa9b0e6ec4fd"),
        .binaryTarget(name: "DotFaceVerification", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-verification/9.11.0/DotFaceVerification.zip", checksum: "e7b19566334bfaa8e2c295d28ea968cbb9c3e017538456e021e2a3e3830f0796"),
        .binaryTarget(name: "DotFaceEyeGazeLiveness", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-eye-gaze-liveness/9.11.0/DotFaceEyeGazeLiveness.zip", checksum: "9cb6193b4a03854520b445847851cdc31edf62b0416e3061d5cdf7c536b2b57b"),
        .binaryTarget(name: "DotFaceExpressionNeutral", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-expression-neutral/9.11.0/DotFaceExpressionNeutral.zip", checksum: "afccc73c081e59fa25bb8b7fb3e09e3317adeed42a1b69fed65188df680d13d8"),
        .binaryTarget(name: "DotFaceDetectionFast", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-detection-fast/9.11.0/DotFaceDetectionFast.zip", checksum: "388e2323bf6e61d66e6bc483277973a3b101b1aa3796dea75448df74e82ba660"),
        .binaryTarget(name: "DotFaceBackgroundUniformity", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-background-uniformity/9.11.0/DotFaceBackgroundUniformity.zip", checksum: "b26efe41bfd514a76a4e3b610c25acee271ea0ef4ee9df853b7c73326bf152b7"),
        .binaryTarget(name: "DotFaceDetectionBalanced", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-detection-balanced/9.11.0/DotFaceDetectionBalanced.zip", checksum: "91048634902065f88fde27b84c58fa6c0d90b22e32e04a897c2dd812f3cef732"),
        .binaryTarget(name: "DotFacePassiveLiveness", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-passive-liveness/9.11.0/DotFacePassiveLiveness.zip", checksum: "633f31ac89c01e8778d3cac4cf4e6ad94f07d40e9e90929361e6c024606cf48d"),
    ]
)
