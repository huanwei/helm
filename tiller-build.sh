#!/bin/bash

docker rmi huanwei/tiller:v2.9.1
docker build -t huanwei/tiller:v2.9.1 .