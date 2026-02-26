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
        .binaryTarget(name: "DotProtocolBuffers", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-protobuf/1.17.0/DotProtocolBuffers.zip", checksum: "fe8eb2fa05123100ef374323ca0ccdacef106b84d6302987756c92041dca0f6b"),
        .binaryTarget(name: "DotOpenSSL", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-openssl/1.2.1/DotOpenSSL.zip", checksum: "c3f919ef386334b683844e077e58996705b4c6d6cd568763e21e970a82f731e9"),
        .binaryTarget(name: "DotCore", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-core/{version}/DotCore.zip", checksum: "{checksum_core}"),
        .binaryTarget(name: "DotSerialization", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-serialization/{version}/DotSerialization.zip", checksum: "{checksum_serialization}"),
        .binaryTarget(name: "DotCapture", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-capture/{version}/DotCapture.zip", checksum: "{checksum_capture}"),
        .binaryTarget(name: "DotCamera", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-camera/{version}/DotCamera.zip", checksum: "{checksum_camera}"),
        .binaryTarget(name: "DotFaceCommons", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-commons/{version}/DotFaceCommons.zip", checksum: "{checksum_face_commons}"),
        .binaryTarget(name: "DotDocumentCommons", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-document-commons/{version}/DotDocumentCommons.zip", checksum: "{checksum_document_commons}"),
        .binaryTarget(name: "DotNfc", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-nfc/{version}/DotNfc.zip", checksum: "{checksum_nfc}"),
        .binaryTarget(name: "DotDocument", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-document/{version}/DotDocument.zip", checksum: "{checksum_document}"),
        .binaryTarget(name: "DotDocumentBarcode", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-document-barcode/{version}/DotDocumentBarcode.zip", checksum: "{checksum_document_barcode}"),
        .binaryTarget(name: "DotPalmCore", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-palm-core/{version}/DotPalmCore.zip", checksum: "{checksum_palm_core}"),
        .binaryTarget(name: "DotPalmDetection", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-palm-detection/{version}/DotPalmDetection.zip", checksum: "{checksum_palm_detection}"),
        .binaryTarget(name: "DotFaceLite", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-lite/{version}/DotFaceLite.zip", checksum: "{checksum_face_lite}"),
        .binaryTarget(name: "DotFaceCore", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-core/{version}/DotFaceCore.zip", checksum: "{checksum_face_core}"),
        .binaryTarget(name: "DotFaceVerification", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-verification/{version}/DotFaceVerification.zip", checksum: "{checksum_verification}"),
        .binaryTarget(name: "DotFaceEyeGazeLiveness", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-eye-gaze-liveness/{version}/DotFaceEyeGazeLiveness.zip", checksum: "{checksum_eye_gaze}"),
        .binaryTarget(name: "DotFaceExpressionNeutral", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-expression-neutral/{version}/DotFaceExpressionNeutral.zip", checksum: "{checksum_expression_neutral}"),
        .binaryTarget(name: "DotFaceDetectionFast", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-detection-fast/{version}/DotFaceDetectionFast.zip", checksum: "{checksum_detection_fast}"),
        .binaryTarget(name: "DotFaceBackgroundUniformity", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-background-uniformity/{version}/DotFaceBackgroundUniformity.zip", checksum: "{checksum_background_uniformity}"),
        .binaryTarget(name: "DotFaceDetectionBalanced", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-detection-balanced/{version}/DotFaceDetectionBalanced.zip", checksum: "{checksum_detection_balanced}"),
        .binaryTarget(name: "DotFacePassiveLiveness", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-passive-liveness/{version}/DotFacePassiveLiveness.zip", checksum: "{checksum_passive}"),
    ]
)
