#!/usr/bin/env bash

set -e
set -x

assert_zip_content() {
  if [ $(grep -c '>NoSuchKey<' "$1") -ne 0 ]
  then
   echo "Failed to download product: $1"
   exit 1
fi
}

if [ $# != 1 ]
  then
    printf "Invalid arguments count. Should be 1\n"
    exit 1
fi

while [ $# -gt 0 ]; do
  case "$1" in
    --release_version=*)
      RELEASE_VERSION="${1#*=}"
      ;;
    *)
      printf "Invalid argument $1\n"
      exit 1
  esac
  shift
done

cp ".template/Package_template.swift" Package.swift

curl -O "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-core/$RELEASE_VERSION/DotCore.zip"
assert_zip_content DotCore.zip
CHECKSUM=$(sha256sum DotCore.zip | awk '{print $1}')
sed -i "s/{checksum_core}/$CHECKSUM/g" Package.swift

curl -O "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-capture/$RELEASE_VERSION/DotCapture.zip"
assert_zip_content DotCapture.zip
CHECKSUM=$(sha256sum DotCapture.zip | awk '{print $1}')
sed -i "s/{checksum_capture}/$CHECKSUM/g" Package.swift

curl -O "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-camera/$RELEASE_VERSION/DotCamera.zip"
assert_zip_content DotCamera.zip
CHECKSUM=$(sha256sum DotCamera.zip | awk '{print $1}')
sed -i "s/{checksum_camera}/$CHECKSUM/g" Package.swift

curl -O "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-commons/$RELEASE_VERSION/DotFaceCommons.zip"
assert_zip_content DotFaceCommons.zip
CHECKSUM=$(sha256sum DotFaceCommons.zip | awk '{print $1}')
sed -i "s/{checksum_face_commons}/$CHECKSUM/g" Package.swift

curl -O "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-nfc/$RELEASE_VERSION/DotNfc.zip"
assert_zip_content DotNfc.zip
CHECKSUM=$(sha256sum DotNfc.zip | awk '{print $1}')
sed -i "s/{checksum_nfc}/$CHECKSUM/g" Package.swift

curl -O "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-document/$RELEASE_VERSION/DotDocument.zip"
assert_zip_content DotDocument.zip
CHECKSUM=$(sha256sum DotDocument.zip | awk '{print $1}')
sed -i "s/{checksum_document}/$CHECKSUM/g" Package.swift

curl -O "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-lite/$RELEASE_VERSION/DotFaceLite.zip"
assert_zip_content DotFaceLite.zip
CHECKSUM=$(sha256sum DotFaceLite.zip | awk '{print $1}')
sed -i "s/{checksum_face_lite}/$CHECKSUM/g" Package.swift

curl -O "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-core/$RELEASE_VERSION/DotFaceCore.zip"
assert_zip_content DotFaceCore.zip
CHECKSUM=$(sha256sum DotFaceCore.zip | awk '{print $1}')
sed -i "s/{checksum_face_core}/$CHECKSUM/g" Package.swift

curl -O "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-verification/$RELEASE_VERSION/DotFaceVerification.zip"
assert_zip_content DotFaceVerification.zip
CHECKSUM=$(sha256sum DotFaceVerification.zip | awk '{print $1}')
sed -i "s/{checksum_verification}/$CHECKSUM/g" Package.swift

curl -O "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-eye-gaze-liveness/$RELEASE_VERSION/DotFaceEyeGazeLiveness.zip"
assert_zip_content DotFaceEyeGazeLiveness.zip
CHECKSUM=$(sha256sum DotFaceEyeGazeLiveness.zip | awk '{print $1}')
sed -i "s/{checksum_eye_gaze}/$CHECKSUM/g" Package.swift

curl -O "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-expression-neutral/$RELEASE_VERSION/DotFaceExpressionNeutral.zip"
assert_zip_content DotFaceExpressionNeutral.zip
CHECKSUM=$(sha256sum DotFaceExpressionNeutral.zip | awk '{print $1}')
sed -i "s/{checksum_expression_neutral}/$CHECKSUM/g" Package.swift

curl -O "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-detection-fast/$RELEASE_VERSION/DotFaceDetectionFast.zip"
assert_zip_content DotFaceDetectionFast.zip
CHECKSUM=$(sha256sum DotFaceDetectionFast.zip | awk '{print $1}')
sed -i "s/{checksum_detection_fast}/$CHECKSUM/g" Package.swift

curl -O "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-background-uniformity/$RELEASE_VERSION/DotFaceBackgroundUniformity.zip"
assert_zip_content DotFaceBackgroundUniformity.zip
CHECKSUM=$(sha256sum DotFaceBackgroundUniformity.zip | awk '{print $1}')
sed -i "s/{checksum_background_uniformity}/$CHECKSUM/g" Package.swift

curl -O "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-detection-balanced/$RELEASE_VERSION/DotFaceDetectionBalanced.zip"
assert_zip_content DotFaceDetectionBalanced.zip
CHECKSUM=$(sha256sum DotFaceDetectionBalanced.zip | awk '{print $1}')
sed -i "s/{checksum_detection_balanced}/$CHECKSUM/g" Package.swift

curl -O "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-passive-liveness/$RELEASE_VERSION/DotFacePassiveLiveness.zip"
assert_zip_content DotFacePassiveLiveness.zip
CHECKSUM=$(sha256sum DotFacePassiveLiveness.zip | awk '{print $1}')
sed -i "s/{checksum_passive}/$CHECKSUM/g" Package.swift

sed -i "s/{version}/$RELEASE_VERSION/g" Package.swift

rm -rf *.zip
exit 0
        




