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
            targets: ["DotFaceLite", "SamFace", "DotProtocolBuffers", "DotCore", "DotCamera", "DotFaceCommons", "DotCapture"]),
        .library(
            name: "DotDocument",
            targets: ["DotDocument", "sam", "DotCore", "DotCamera", "DotProtocolBuffers", "DotCapture"]),
        .library(
            name: "DotNfc",
            targets: ["DotNfc", "OpenSSL", "DotCore"]),
        .library(
            name: "DotFaceVerification",
            targets: ["DotFaceVerification", "DotFaceCore", "iface", "innoonnxruntime", "DotProtocolBuffers", "DotCore", "DotCamera", "DotFaceCommons", "DotCapture"]),
        .library(
            name: "DotFaceEyeGazeLiveness",
            targets: ["DotFaceEyeGazeLiveness", "DotFaceCore", "iface", "innoonnxruntime", "DotProtocolBuffers", "DotCore", "DotCamera", "DotFaceCommons", "DotCapture"]),
        .library(
            name: "DotFaceExpressionNeutral",
            targets: ["DotFaceExpressionNeutral", "DotFaceCore", "iface", "innoonnxruntime", "DotProtocolBuffers", "DotCore", "DotCamera", "DotFaceCommons", "DotCapture"]),
        .library(
            name: "DotFaceDetectionFast",
            targets: ["DotFaceDetectionFast", "DotFaceCore", "iface", "innoonnxruntime", "DotProtocolBuffers", "DotCore", "DotCamera", "DotFaceCommons", "DotCapture"]),
        .library(
            name: "DotFaceBackgroundUniformity",
            targets: ["DotFaceBackgroundUniformity", "DotFaceCore", "iface", "innoonnxruntime", "DotProtocolBuffers", "DotCore", "DotCamera", "DotFaceCommons", "DotCapture"]),
        .library(
            name: "DotFaceDetectionBalanced",
            targets: ["DotFaceDetectionBalanced", "DotFaceCore", "iface", "innoonnxruntime", "DotProtocolBuffers", "DotCore", "DotCamera", "DotFaceCommons", "DotCapture"]),
        .library(
            name: "DotFacePassiveLiveness",
            targets: ["DotFacePassiveLiveness", "DotFaceCore", "iface", "innoonnxruntime", "DotProtocolBuffers", "DotCore", "DotCamera", "DotFaceCommons", "DotCapture"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(name: "sam", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/sam/2.3.0/Sam.zip", checksum: "caffd31c108d9c8c0434b0e0d12ec4f8058e0dd750f10c2d85cde3b5e3b2ff01"),
        .binaryTarget(name: "iface", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/iface/5.1.1/IFace.zip", checksum: "f301283d9323db0fc8d6e7a15ffdf3853f59f8e079ba238a73b459bf556deeb6"),
        .binaryTarget(name: "innoonnxruntime", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/onnx/2.1.1/Onnx.zip", checksum: "6fd0929999a977b36e09728c482c0b95a173edc71e1f262be5ae101609bdc9cf"),
        .binaryTarget(name: "DotProtocolBuffers", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-protobuf/1.3.0/DotProtocolBuffers.zip", checksum: "22732f3f90fe82a6cdb0aea7d8a8390ec840517b76e0764cfda8ecb889b4276e"),
        .binaryTarget(name: "OpenSSL", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-openssl/1.1.0/OpenSSL.zip", checksum: "c241be4a102f8bc493f2e652c3e732663cbd4f6341cf65f6f6fbec720e0140d4"),
        .binaryTarget(name: "SamFace", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/sam-face/1.2.0/SamFace.zip", checksum: "a309d640fdf93eca446f92b1b99213395ca32631ee44d090b84453b932a9318f"),
        .binaryTarget(name: "DotCore", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-core/6.1.1/DotCore.zip", checksum: "e204ec13ae8ff811b6608eaa4fca55a857ce94e6d70ca8a8c10b00df45fd7ea4"),
        .binaryTarget(name: "DotCapture", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-capture/6.1.1/DotCapture.zip", checksum: "35b47e0493eb0e6137aebcc6f937999dbf0eccbb5254cb57ca169e5bd5c4dbc4"),
        .binaryTarget(name: "DotCamera", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-camera/6.1.1/DotCamera.zip", checksum: "3d4c9f34d493d2264fbc58278feb822855295068f9e9a5e2dfa2b873dcc817ce"),
        .binaryTarget(name: "DotFaceCommons", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-commons/6.1.1/DotFaceCommons.zip", checksum: "132dc7db2208150112d1986a0f4410b4198fb454eb0a76f57b9d2d9c8f32814b"),
        .binaryTarget(name: "DotNfc", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-nfc/6.1.1/DotNfc.zip", checksum: "b50a998c733e222e962b8c521a98ff4ae43cc338c1bfe1876f7d032eb5811ce5"),
        .binaryTarget(name: "DotDocument", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-document/6.1.1/DotDocument.zip", checksum: "5210414948b96e64955bb5c889fd385be1bd6c5395137da94549b567128298a6"),
        .binaryTarget(name: "DotFaceLite", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-lite/6.1.1/DotFaceLite.zip", checksum: "4dceb2cc02236947fcd4719cbfe39c290e70427fce852ff35e1a619403af954b"),
        .binaryTarget(name: "DotFaceCore", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-core/6.1.1/DotFaceCore.zip", checksum: "ece145329a5fef6304698ee49d4ca3e1c76682d864be07f21b2e492949b0338c"),
        .binaryTarget(name: "DotFaceVerification", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-verification/6.1.1/DotFaceVerification.zip", checksum: "45b9b93ac79342b3bcdbc241a354ba8d17853735cb0690c377dc8c555dd07284"),
        .binaryTarget(name: "DotFaceEyeGazeLiveness", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-eye-gaze-liveness/6.1.1/DotFaceEyeGazeLiveness.zip", checksum: "db6f694c12afc2cb8512c5c9a370c47e783e626f70a859eeb60d2eb951c5bd10"),
        .binaryTarget(name: "DotFaceExpressionNeutral", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-expression-neutral/6.1.1/DotFaceExpressionNeutral.zip", checksum: "4d51a221af33a4aeed4bd004f86e82b8ac3274860f3231cdd4a842f65560ad43"),
        .binaryTarget(name: "DotFaceDetectionFast", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-detection-fast/6.1.1/DotFaceDetectionFast.zip", checksum: "ff3fabc09db694c76b09e5c00415a490847c736a004441ae180289992af9c42b"),
        .binaryTarget(name: "DotFaceBackgroundUniformity", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-background-uniformity/6.1.1/DotFaceBackgroundUniformity.zip", checksum: "ef03a0bebd3afa44bbedd0380c2cbbeec71bd87c345b147223523f69171b94d2"),
        .binaryTarget(name: "DotFaceDetectionBalanced", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-detection-balanced/6.1.1/DotFaceDetectionBalanced.zip", checksum: "38b5314e799123099b3cb3bcfe6cd1f1966f01b6cf525dd5c45298eeba83690e"),
        .binaryTarget(name: "DotFacePassiveLiveness", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-passive-liveness/6.1.1/DotFacePassiveLiveness.zip", checksum: "602decb19b7e482fcd48412f4a01dff10a3588e1c7b1aae4dad7677bddd10a9e"),
    ]
)
