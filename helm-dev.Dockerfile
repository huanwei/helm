# Copyright 2017 The Kubernetes Authors.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# huanwei/helm-dev
FROM huanwei/helm-build
MAINTAINER Huan Wei<huan@harmonycloud.cn>

#COPY cmd/helm/upgrade.go $GOPATH/src/k8s.io/helm/cmd/helm/upgrade.go
COPY pkg/tiller/release_update.go $GOPATH/src/k8s.io/helm/pkg/tiller/release_update.go
COPY pkg/tiller/release_install.go $GOPATH/src/k8s.io/helm/pkg/tiller/release_install.go
RUN cd $GOPATH/src/k8s.io/helm \
 && make build \
 && GOOS=linux GOARCH=amd64 CGO_ENABLED=0 go build -v -i -o bin/tiller k8s.io/helm/cmd/tiller