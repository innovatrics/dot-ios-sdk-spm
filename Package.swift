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
        .binaryTarget(name: "DotCore", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-core/9.9.0/DotCore.zip", checksum: "e5f3a3f06e6dbdc1ad21559e6c96cf60f2b72321200f32954c341bb8dc565562"),
        .binaryTarget(name: "DotSerialization", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-serialization/9.9.0/DotSerialization.zip", checksum: "33edb79dce486a8ed66016a4a5feccf062dd4dc6c08d3ab6eb9c4ce762f7af02"),
        .binaryTarget(name: "DotCapture", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-capture/9.9.0/DotCapture.zip", checksum: "222a6c0e20a2f69c0d35d159a4111d3c9bf5211baf1bb39ebad08f8defc45321"),
        .binaryTarget(name: "DotCamera", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-camera/9.9.0/DotCamera.zip", checksum: "1ba958a7125a379e3e39e845e1c2a92122a30cf1de5ee40744559923df2e2019"),
        .binaryTarget(name: "DotFaceCommons", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-commons/9.9.0/DotFaceCommons.zip", checksum: "b35ee8e308bcb461d0b0ab1a3a8f6c651e8c1bc57f23829e4bfdc44b6ca45db8"),
        .binaryTarget(name: "DotDocumentCommons", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-document-commons/9.9.0/DotDocumentCommons.zip", checksum: "3f00c583594c403d0ecac357194e4caf4d5df8a464f5ecd19eeeebdc810f7140"),
        .binaryTarget(name: "DotNfc", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-nfc/9.9.0/DotNfc.zip", checksum: "6b99999015b1b8133965621b61de2c1911d2b2dd8bfc9726b6ff0cb619a11c80"),
        .binaryTarget(name: "DotDocument", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-document/9.9.0/DotDocument.zip", checksum: "284f0aeee161aecfc958439e81a1af7469faa719e483d4ff4e6ae86583e90918"),
        .binaryTarget(name: "DotDocumentBarcode", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-document-barcode/9.9.0/DotDocumentBarcode.zip", checksum: "509e2ad637e97f731136ff0ec36507badb9bdbc41ba60af0b0710696658c1cfd"),
        .binaryTarget(name: "DotPalmCore", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-palm-core/9.9.0/DotPalmCore.zip", checksum: "ff47a846b6c575232792df508b0fc5a497d0862edcb2ab232d92b6f66941d948"),
        .binaryTarget(name: "DotPalmDetection", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-palm-detection/9.9.0/DotPalmDetection.zip", checksum: "922ab5eca60d5de753f747f64e017cc61de45e6953f37003a2111dff6ef4ac84"),
        .binaryTarget(name: "DotFingersCore", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-fingers-core/9.9.0/DotFingersCore.zip", checksum: "f6a6832bfa33a52842188c11d570a4c443272f4bebab6dafcb258eb8a43e5528"),
        .binaryTarget(name: "DotFingersDetection", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-fingers-detection/9.9.0/DotFingersDetection.zip", checksum: "41e3058d10b38e9e363cd211aa0639cacca5166b09ef79f53e3fa76149395acf"),
        .binaryTarget(name: "DotFingersTransformation", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-fingers-transformation/9.9.0/DotFingersTransformation.zip", checksum: "6ef62b9c72b54a0ca493f6cd9e0df625b9f68750d5ad82b4ddc5aedb32c0837a"),
        .binaryTarget(name: "DotFaceLite", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-lite/9.9.0/DotFaceLite.zip", checksum: "5977abf3040c6f9ca62d9c518bf5523acbd6d325dc1db835ed8ee063fdc93997"),
        .binaryTarget(name: "DotFaceCore", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-core/9.9.0/DotFaceCore.zip", checksum: "6b440bde201d4519242b3b1a163dd7cb5ee3caba00c208a7f177ae59d976e467"),
        .binaryTarget(name: "DotFaceVerification", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-verification/9.9.0/DotFaceVerification.zip", checksum: "9fa29374e61ae842d0c916f749dbd3aaa22c248882487fc1b9a4bd1be72c8d3d"),
        .binaryTarget(name: "DotFaceEyeGazeLiveness", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-eye-gaze-liveness/9.9.0/DotFaceEyeGazeLiveness.zip", checksum: "777ca91e5e38219b8214d9e87155ae202274b1f674e4eff3dcbdf6d0bcd58535"),
        .binaryTarget(name: "DotFaceExpressionNeutral", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-expression-neutral/9.9.0/DotFaceExpressionNeutral.zip", checksum: "b3fffeb48cc44bfa9459fa0884c28b6dc1a6fba61f4afcb39b2f270f0436d410"),
        .binaryTarget(name: "DotFaceDetectionFast", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-detection-fast/9.9.0/DotFaceDetectionFast.zip", checksum: "5f190eab55dc0e064105f54fdafb8b64c35fea7f50edda471ecd08c0563aaa70"),
        .binaryTarget(name: "DotFaceBackgroundUniformity", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-background-uniformity/9.9.0/DotFaceBackgroundUniformity.zip", checksum: "8477ed983d6513d2c9b576df94b25f3003f2edb78f65b7d2f8a34a971d6c580e"),
        .binaryTarget(name: "DotFaceDetectionBalanced", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-detection-balanced/9.9.0/DotFaceDetectionBalanced.zip", checksum: "1f6b1ecd963f6d977718be9bcd6fcbd80ab46545253296e951152842a671c305"),
        .binaryTarget(name: "DotFacePassiveLiveness", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-passive-liveness/9.9.0/DotFacePassiveLiveness.zip", checksum: "3d6a3da49d5229a9430f06966410894ddb7e221e4765d345b6fcac13d434fbd4"),
    ]
)
