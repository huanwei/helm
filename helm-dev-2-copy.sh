#!/bin/bash

rm -rf ./bin/
mkdir -p ./bin/
docker cp helm-dev:/go/src/k8s.io/helm/bin/helm ./bin/
docker cp helm-dev:/go/src/k8s.io/helm/bin/tiller ./bin/
docker cp helm-dev:/go/src/k8s.io/helm/bin/rudder ./bin/
sleep 10
docker rm -f helm-dev
ls ./bin/