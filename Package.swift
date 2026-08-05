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
        .binaryTarget(name: "DotCore", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-core/9.6.0/DotCore.zip", checksum: "86a3232b5f614a28e28fb57c3f5ebb2e2759ee46fa367d4cc5bbf2d8b2f57746"),
        .binaryTarget(name: "DotSerialization", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-serialization/9.6.0/DotSerialization.zip", checksum: "5f081c6bdec6cb0cd1a1cf4ac1b867dc1af45417d7900007e6ea00f1f13d2558"),
        .binaryTarget(name: "DotCapture", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-capture/9.6.0/DotCapture.zip", checksum: "ad4cb010ad3817b86d064539cc8521275704ffa36f6faab36d752bb1b0dc4239"),
        .binaryTarget(name: "DotCamera", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-camera/9.6.0/DotCamera.zip", checksum: "3203beab49d78b11d2483579e981ad5e70ca8eea09056a3036858be6696e4ccf"),
        .binaryTarget(name: "DotFaceCommons", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-commons/9.6.0/DotFaceCommons.zip", checksum: "e5399390c655f6cff75943f3ae6564c77d875358b7c29340136f37b39c1ee606"),
        .binaryTarget(name: "DotDocumentCommons", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-document-commons/9.6.0/DotDocumentCommons.zip", checksum: "de430ac3979cfe82f9734aac7da1e6a9ed1e3f15bb4bc2722c4093893bad6f65"),
        .binaryTarget(name: "DotNfc", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-nfc/9.6.0/DotNfc.zip", checksum: "1c1a168c99443066bf62de0b0f3fa7e7a04f2b061a9ecb3cc5e615962b50a15f"),
        .binaryTarget(name: "DotDocument", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-document/9.6.0/DotDocument.zip", checksum: "b97a946f36e2294036271155f7d2578089ebf39aba3335b9b20d915b3026abae"),
        .binaryTarget(name: "DotDocumentBarcode", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-document-barcode/9.6.0/DotDocumentBarcode.zip", checksum: "e1f1c425e39aaa362c4169007ce7965b0906cbc23f7983ef356a706be81bd87e"),
        .binaryTarget(name: "DotPalmCore", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-palm-core/9.6.0/DotPalmCore.zip", checksum: "e3aaa99b2fd8b4d2fac6c3e432cd3db846e7fe07013e445594dfb2e58e70c122"),
        .binaryTarget(name: "DotPalmDetection", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-palm-detection/9.6.0/DotPalmDetection.zip", checksum: "4a2cc4453ae9247c2e9e2b27c2f021759c4aaacb44ed2b34fd26ad6a90a48020"),
        .binaryTarget(name: "DotFingersCore", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-fingers-core/9.6.0/DotFingersCore.zip", checksum: "eacb09a79c01332dfabf2a3c2c90eb48da08e3a5d24bda18b9f935b91542f39b"),
        .binaryTarget(name: "DotFingersDetection", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-fingers-detection/9.6.0/DotFingersDetection.zip", checksum: "6a13564a1021ecbec76f9237ab4b3880c1faa7977dffc5c6af712556707f4b4b"),
        .binaryTarget(name: "DotFingersTransformation", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-fingers-transformation/9.6.0/DotFingersTransformation.zip", checksum: "37e35efcb150801cea6e583bf916682e20eec16707d4053ea5de1d29a328ed91"),
        .binaryTarget(name: "DotFaceLite", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-lite/9.6.0/DotFaceLite.zip", checksum: "ddc38c86899a9673ced3797211514d9ae7f2389714c3dbc6b722f650100657d3"),
        .binaryTarget(name: "DotFaceCore", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-core/9.6.0/DotFaceCore.zip", checksum: "f0e0ace9147f9d8dc706953011a7a00d3935bcaecf44d1d30fc7efec30be24b4"),
        .binaryTarget(name: "DotFaceVerification", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-verification/9.6.0/DotFaceVerification.zip", checksum: "04de2549af868043a932c3b42e6183b64a6400a916ed961078cbb1d1e6ee9d71"),
        .binaryTarget(name: "DotFaceEyeGazeLiveness", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-eye-gaze-liveness/9.6.0/DotFaceEyeGazeLiveness.zip", checksum: "64aa144378200a12953ccdad793c78de53ed49b0521ae820216296974b2b926e"),
        .binaryTarget(name: "DotFaceExpressionNeutral", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-expression-neutral/9.6.0/DotFaceExpressionNeutral.zip", checksum: "efce173cd0090f55afa9a2888e1413c622f49f91e9cc04b7a8a8807bf4e028af"),
        .binaryTarget(name: "DotFaceDetectionFast", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-detection-fast/9.6.0/DotFaceDetectionFast.zip", checksum: "07b9ec814326c5bf485bb96d17ed310a603d74562cd9fdb14bb7dad0d6e2ca90"),
        .binaryTarget(name: "DotFaceBackgroundUniformity", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-background-uniformity/9.6.0/DotFaceBackgroundUniformity.zip", checksum: "10a91c4b5c08b9856f502709cff92997311df4c9277a6393a6fe3afbe21b6786"),
        .binaryTarget(name: "DotFaceDetectionBalanced", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-detection-balanced/9.6.0/DotFaceDetectionBalanced.zip", checksum: "26dba66a70b7b71d20c6556c353fd55607f7be6dc3016d24609e59902def9ad9"),
        .binaryTarget(name: "DotFacePassiveLiveness", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-passive-liveness/9.6.0/DotFacePassiveLiveness.zip", checksum: "23694928425817a8399cddfff36ce3dff91dadc56b4c2234c3c86721844f7c8e"),
    ]
)
