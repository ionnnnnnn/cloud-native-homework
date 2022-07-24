#!/bin/sh

set -x

VERSION_ID="${BUILD_ID}"
IMAGE_NAME="cloud-native-homework:${BUILD_ID}"
IMAGE_ADDR="test-harbor.daocloud.io/nju12/${IMAGE_NAME}"

docker build -f Dockerfile --build-arg jar_name=target/prometheus-test-demo-0.0.1-SNAPSHOT.jar -t ${IMAGE_NAME}:${VERSION_ID} .

docker tag  ${IMAGE_NAME}:${VERSION_ID}  ${IMAGE_ADDR}:${VERSION_ID}
docker login --username=nju12 --password=nju122022 test-harbor.daocloud.io
docker push ${IMAGE_ADDR}:${VERSION_ID}