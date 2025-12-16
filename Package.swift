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
        .binaryTarget(name: "DotProtocolBuffers", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-protobuf/1.16.2/DotProtocolBuffers.zip", checksum: "9b0ce3bfb41f2e53fb1c1b3ac4feb49ca800995c8ffd57b1a64635461f4a3220"),
        .binaryTarget(name: "DotOpenSSL", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-openssl/1.2.1/DotOpenSSL.zip", checksum: "c3f919ef386334b683844e077e58996705b4c6d6cd568763e21e970a82f731e9"),
        .binaryTarget(name: "DotCore", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-core/9.0.0/DotCore.zip", checksum: "ae7291539e64c093dc0565a62674a75a6859c4732f69c9127d37a2dd857b8d2c"),
        .binaryTarget(name: "DotSerialization", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-serialization/9.0.0/DotSerialization.zip", checksum: "39c4c6fec6a842f79c4cf6bc37ef18317bba8510e6f241067c184e2362a53bf1"),
        .binaryTarget(name: "DotCapture", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-capture/9.0.0/DotCapture.zip", checksum: "d303fd394a8b30871fe050740957ac6719135900a82dff5cd4c24945cd760494"),
        .binaryTarget(name: "DotCamera", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-camera/9.0.0/DotCamera.zip", checksum: "aac248d410deb41ee6d744906fe27a736cbd8f7ec8ab431792c4a4af45539353"),
        .binaryTarget(name: "DotFaceCommons", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-commons/9.0.0/DotFaceCommons.zip", checksum: "84ea279b41ed2beae78c83fbf7bb8efa9cdb37b2ebadbf7b1ca3517eb257565a"),
        .binaryTarget(name: "DotDocumentCommons", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-document-commons/9.0.0/DotDocumentCommons.zip", checksum: "534f93cd912c3ad9b9326aeffc96cc35c9662feb8eac4cb932defa2ad7eaea4b"),
        .binaryTarget(name: "DotNfc", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-nfc/9.0.0/DotNfc.zip", checksum: "cf592744c52d7117da48868f8fcd5cf857dcb8b112ed2dc9ccffdb4326118a8c"),
        .binaryTarget(name: "DotDocument", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-document/9.0.0/DotDocument.zip", checksum: "4f26b3914aa93b712dadcd8fb319d8b171f9e895d789b53456bbdf17fb3eea1f"),
        .binaryTarget(name: "DotPalmCore", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-palm-core/9.0.0/DotPalmCore.zip", checksum: "56c9197ee91f8d51f8433d8bda940a4d24d343b256f080e5b76a2fd8b059baf9"),
        .binaryTarget(name: "DotPalmDetection", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-palm-detection/9.0.0/DotPalmDetection.zip", checksum: "1e712d61ebcd79134e571e9347ba1ed6f5bb75127cdcf9afda1695065f2f38f7"),
        .binaryTarget(name: "DotFaceLite", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-lite/9.0.0/DotFaceLite.zip", checksum: "82c5e7ed66ac4bc919a7e55e5be4f76d0623e9e417a4e993b687c3309249b64a"),
        .binaryTarget(name: "DotFaceCore", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-core/9.0.0/DotFaceCore.zip", checksum: "66410e0e0c045060a291986766a2d00103da232c86a6f5d62c7c93d11e75765a"),
        .binaryTarget(name: "DotFaceVerification", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-verification/9.0.0/DotFaceVerification.zip", checksum: "a01bbc5ded4f028a4e67e24d9a0d87f90a0b79fb5c7956a53e48aebc4c0977cc"),
        .binaryTarget(name: "DotFaceEyeGazeLiveness", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-eye-gaze-liveness/9.0.0/DotFaceEyeGazeLiveness.zip", checksum: "93d05a5a7136b5ed2b24bed8605c6d71efbba0f0543392a0f76c5a4864035a2a"),
        .binaryTarget(name: "DotFaceExpressionNeutral", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-expression-neutral/9.0.0/DotFaceExpressionNeutral.zip", checksum: "931a7e2236eb8cdf09c3bfe237a6d6ea3d98c5caf933bc52ab57d30212862b3d"),
        .binaryTarget(name: "DotFaceDetectionFast", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-detection-fast/9.0.0/DotFaceDetectionFast.zip", checksum: "d7081d6250c770bf04b9ded6ffd7c154b563aff7016f70f80002d1fa141d4fca"),
        .binaryTarget(name: "DotFaceBackgroundUniformity", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-background-uniformity/9.0.0/DotFaceBackgroundUniformity.zip", checksum: "2d7ac6cb9bece7d8f445714a4848a522fb79cfdb5a5505936f7c631b298aa6fc"),
        .binaryTarget(name: "DotFaceDetectionBalanced", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-detection-balanced/9.0.0/DotFaceDetectionBalanced.zip", checksum: "1c23c2d0f8dd0d64fcdc0145bc8653f09bb0bebe10cf7f9a4ae77dcdae40db98"),
        .binaryTarget(name: "DotFacePassiveLiveness", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-passive-liveness/9.0.0/DotFacePassiveLiveness.zip", checksum: "f556b9925632b3a74f0f10f243e495cfaa3f147513824c4e9872f91c1e8bd326"),
    ]
)
