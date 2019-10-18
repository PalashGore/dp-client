#!/bin/bash: 
VERSION=$1

if [[ -n "$VERSION" ]]; then
    VERSION=$1
else
    VERSION=latest
fi

echo "Building docker image with tag :$VERSION"
cd C:/projects/dp/dp-client
docker build -t gcr.io/cloudpark-e6cc4/client-image:$VERSION .
gcloud docker -- push gcr.io/cloudpark-e6cc4/client-image:$VERSION