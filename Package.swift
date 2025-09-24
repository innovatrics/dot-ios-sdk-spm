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
        .binaryTarget(name: "DotProtocolBuffers", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-protobuf/1.14.1/DotProtocolBuffers.zip", checksum: "36ab2bbaf4bc67369928c94234928ab19c21d091ba5227278912694b70471f75"),
        .binaryTarget(name: "DotOpenSSL", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-openssl/1.2.1/DotOpenSSL.zip", checksum: "c3f919ef386334b683844e077e58996705b4c6d6cd568763e21e970a82f731e9"),
        .binaryTarget(name: "DotCore", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-core/8.15.2/DotCore.zip", checksum: "65adf49fc289a327817c10d61cc07c36fb88001a43a42573a49f4f3486e41898"),
        .binaryTarget(name: "DotSerialization", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-serialization/8.15.2/DotSerialization.zip", checksum: "4c377c2f38e0ae3d78c6bc5e8e41e50579e9fadeb3a9dc0b52bebd7b14fa6547"),
        .binaryTarget(name: "DotCapture", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-capture/8.15.2/DotCapture.zip", checksum: "aba0e224ac272bccd3905e13768eccce34dae084df6de009426ae952abcb61c3"),
        .binaryTarget(name: "DotCamera", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-camera/8.15.2/DotCamera.zip", checksum: "8b7f992095f4f081651561297ccc01cadf4cf9ca400de7bd1178414692f53f18"),
        .binaryTarget(name: "DotFaceCommons", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-commons/8.15.2/DotFaceCommons.zip", checksum: "23fb370981c69e3f66550aff24991732e018d250797655df0946ba7a4a44aafc"),
        .binaryTarget(name: "DotDocumentCommons", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-document-commons/8.15.2/DotDocumentCommons.zip", checksum: "3aee251b42d9f85338d2411a5d3f39f922e8118e0b5fd521c42cbe6d1176ae6b"),
        .binaryTarget(name: "DotNfc", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-nfc/8.15.2/DotNfc.zip", checksum: "f142946b1706fe260b330cf975e184e0e0f5a0cb24cec43303bef666abbbf366"),
        .binaryTarget(name: "DotDocument", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-document/8.15.2/DotDocument.zip", checksum: "9faf61e530c1fdfef6633387013bc92bb18d1b726e0a268a1689e563229b01af"),
        .binaryTarget(name: "DotPalmCore", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-palm-core/8.15.2/DotPalmCore.zip", checksum: "074222289a71f78ecc086359227a006255f75af773832b76aa082356169720f3"),
        .binaryTarget(name: "DotPalmDetection", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-palm-detection/8.15.2/DotPalmDetection.zip", checksum: "fd5209f6c9c03f6ff894840b364df00cad6fa303a756c429ce8c33ec3c429c6d"),
        .binaryTarget(name: "DotFaceLite", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-lite/8.15.2/DotFaceLite.zip", checksum: "e74d4ed0f90a8bfaeb51de2ca3d732eabc744d5ccfe73be8d1b7d130a2903d90"),
        .binaryTarget(name: "DotFaceCore", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-core/8.15.2/DotFaceCore.zip", checksum: "537e95e390c8ba52e4294eea0fcaa341cd12f90aa2e0081aab72692e86176182"),
        .binaryTarget(name: "DotFaceVerification", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-verification/8.15.2/DotFaceVerification.zip", checksum: "867e53b77066a6a53971cc85ad263db4ad51d0a8e1dfdc8528d2a52ad0c57386"),
        .binaryTarget(name: "DotFaceEyeGazeLiveness", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-eye-gaze-liveness/8.15.2/DotFaceEyeGazeLiveness.zip", checksum: "9cac54c5079f92c7f45523fe858b51e565b61da6a1bfebb7abae10ff4d238e71"),
        .binaryTarget(name: "DotFaceExpressionNeutral", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-expression-neutral/8.15.2/DotFaceExpressionNeutral.zip", checksum: "3e7c5e717c2c5a14df223b006edffb47860526de1affd2d8f4b2a145eaee2491"),
        .binaryTarget(name: "DotFaceDetectionFast", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-detection-fast/8.15.2/DotFaceDetectionFast.zip", checksum: "53a3a18bf6a0b9235dd080d542e8fc9193a86aaceb922452dd19d884c3e6dbc6"),
        .binaryTarget(name: "DotFaceBackgroundUniformity", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-background-uniformity/8.15.2/DotFaceBackgroundUniformity.zip", checksum: "b6ffd983fd4a86186ed3c74a82517a4a1567dba685737df1c088ebca55681ef5"),
        .binaryTarget(name: "DotFaceDetectionBalanced", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-detection-balanced/8.15.2/DotFaceDetectionBalanced.zip", checksum: "a936b2d88b39855c48fe0ec8523529132eb25ed2a694af893c4b8a8f307d7c81"),
        .binaryTarget(name: "DotFacePassiveLiveness", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-passive-liveness/8.15.2/DotFacePassiveLiveness.zip", checksum: "b97b56d9fc89364e81b980eb0eaf27f1e87ab03a81bdfb6d7eb614f32ab22920"),
    ]
)
