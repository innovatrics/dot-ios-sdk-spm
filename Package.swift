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
        .binaryTarget(name: "DotProtocolBuffers", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-protobuf/1.14.0/DotProtocolBuffers.zip", checksum: "49af527dbdfc87f2d3f958cbfcd473fbdfaab8103e2751503cb1c849a81aed11"),
        .binaryTarget(name: "DotOpenSSL", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-openssl/1.2.1/DotOpenSSL.zip", checksum: "c3f919ef386334b683844e077e58996705b4c6d6cd568763e21e970a82f731e9"),
        .binaryTarget(name: "DotCore", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-core/8.11.0/DotCore.zip", checksum: "77bd72ac09b77a36e2f4601082d32b0a140ae69ed98ff258e9f278a4027dbfc2"),
        .binaryTarget(name: "DotSerialization", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-serialization/8.11.0/DotSerialization.zip", checksum: "e13bafbaf05df97cb4c69292e643be019ce369b4c7fd07afa623ea245cd47b2b"),
        .binaryTarget(name: "DotCapture", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-capture/8.11.0/DotCapture.zip", checksum: "344ec0d106b3ee7e5cc8b18c99c9441ee89d1f8e0e5fad1d080193e503331273"),
        .binaryTarget(name: "DotCamera", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-camera/8.11.0/DotCamera.zip", checksum: "3d918315095ba0d020454acb999d7cad0b581360d06174512cfe0559728a57c1"),
        .binaryTarget(name: "DotFaceCommons", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-commons/8.11.0/DotFaceCommons.zip", checksum: "9dab3f89d93227e0754619f027c83471b683fc04951844ff9224852335984903"),
        .binaryTarget(name: "DotDocumentCommons", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-document-commons/8.11.0/DotDocumentCommons.zip", checksum: "414831aec36d1b26a80b5022a2b0b9b0e57ffa7fdd806b1703dae25f7fd1ef36"),
        .binaryTarget(name: "DotNfc", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-nfc/8.11.0/DotNfc.zip", checksum: "00709e0deddc3b38527a483797323c46dc12789f1e131ce81b86644db169f2d9"),
        .binaryTarget(name: "DotDocument", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-document/8.11.0/DotDocument.zip", checksum: "84aef68a8abd4beb34e664459875f51577d5d8ce9caa77a2863fb729ef2051e0"),
        .binaryTarget(name: "DotPalmCore", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-palm-core/8.11.0/DotPalmCore.zip", checksum: "9652fe82d110e5348679988945ca642519ebeb2eea979c1d36294cef0db5a3bd"),
        .binaryTarget(name: "DotPalmDetection", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-palm-detection/8.11.0/DotPalmDetection.zip", checksum: "27a9f4964e25bb7f4be01f3ceba131b5e39b295dc1af98d4bbd3f03b98dbaa74"),
        .binaryTarget(name: "DotFaceLite", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-lite/8.11.0/DotFaceLite.zip", checksum: "06cb5710b131b2c9c5481fb75102fce71546dcedf1fc228f9dcacd1a4ce8ca85"),
        .binaryTarget(name: "DotFaceCore", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-core/8.11.0/DotFaceCore.zip", checksum: "0997f62640174f7a83e03236a6142a5c43e0d795f1860a2d949609b8d95a3555"),
        .binaryTarget(name: "DotFaceVerification", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-verification/8.11.0/DotFaceVerification.zip", checksum: "3ee4d21c25830c0cb39dee0837c30c9c60761a91b077dcda279d0f4893a76394"),
        .binaryTarget(name: "DotFaceEyeGazeLiveness", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-eye-gaze-liveness/8.11.0/DotFaceEyeGazeLiveness.zip", checksum: "e80c60e7ab7bc9bb1955231294191eab719b953f2b00d4c3ef7da0a67432d4a1"),
        .binaryTarget(name: "DotFaceExpressionNeutral", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-expression-neutral/8.11.0/DotFaceExpressionNeutral.zip", checksum: "0a9f878d3d9ff6c55cc86ff5e0e67cbd443a19462960d73a6235ec2d1ffcd22d"),
        .binaryTarget(name: "DotFaceDetectionFast", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-detection-fast/8.11.0/DotFaceDetectionFast.zip", checksum: "c610330c85f9ef76f32f2e4c20cd9ac95ab837e59dabe76489b8179d34c3647f"),
        .binaryTarget(name: "DotFaceBackgroundUniformity", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-background-uniformity/8.11.0/DotFaceBackgroundUniformity.zip", checksum: "558c620d1a5e1fd846b7f691ae817303a14ddacd3f86e8de00945cee91876ed5"),
        .binaryTarget(name: "DotFaceDetectionBalanced", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-detection-balanced/8.11.0/DotFaceDetectionBalanced.zip", checksum: "bc0b2ac9d0f2b62dcf618759a2997e4d2ff187cedb2a8ae1e57fe6d6c4661c65"),
        .binaryTarget(name: "DotFacePassiveLiveness", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-passive-liveness/8.11.0/DotFacePassiveLiveness.zip", checksum: "01771c19ddd9c209482c202dc1636b66c61444ac6025ad5a3a8464a3a38b30ac"),
    ]
)
