#!/bin/bash: 
VERSION=$1

if [[ -n "$VERSION" ]]; then
    VERSION=$1
else
    VERSION=latest
fi

echo "Building docker image with tag :$VERSION"
cd C:/projects/deployment/client-deployment
docker build -t client-image:$VERSION .