#!/bin/bash

docker rm -f helm-dev
sleep 5
docker run -d --name=helm-dev huanwei/helm-dev tail -f /dev/null