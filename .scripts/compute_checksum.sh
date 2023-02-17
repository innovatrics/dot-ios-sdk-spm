#!/usr/bin/env bash

set -e

assert_zip_content() {
  if [ $(grep -c '>NoSuchKey<' "$1") -ne 0 ]
  then
   echo "Failed to download product: $2"
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
    --component_url=*)
      COMPONENT_URL="${1#*=}"
      ;;
    *)
      printf "Invalid argument $1\n"
      exit 1
  esac
  shift
done

curl $COMPONENT_URL > temporary.checksum
assert_zip_content temporary.checksum $COMPONENT_URL
echo $(sha256sum temporary.checksum | awk '{print $1}')
rm -rf temporary.checksum
exit 0

