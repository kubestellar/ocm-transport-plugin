# Copyright 2024 The KubeStellar Authors.
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

# Image repo/tag to use all building/pushing image targets
DOCKER_REGISTRY ?= ghcr.io/Kubestellar/ocm-transport-plugin
IMAGE_TAG ?= 0.20.0-alpha.1
IMAGE ?= ${DOCKER_REGISTRY}/${COMPONENT}:${IMAGE_TAG}

.PHONY: build	
build: ## Builds OCM based transport executable.
	go build -o bin/ocm_transport cmd/main.go

.PHONY: fmt
fmt:	## Run go fmt against code.
	go fmt ./...

.PHONY: vet
vet:	## Run go vet against code.
	go vet ./...

.PHONY: build-push
build-push: vet fmt ## Build and push container image with ko.
	KO_DOCKER_REPO=${COMPONENT} ko build -B cmd/main.go -t ${IMAGE_TAG} --platform linux/amd64,linux/arm64

.PHONY: help 
help: ## Show this help message.
	@awk 'BEGIN {FS = ":.*##"; printf "\nUsage:\n  make \033[36m<target>\033[0m\n"} /^[a-zA-Z_0-9-]+:.*?##/ { printf "  \033[36m%-15s\033[0m %s\n", $$1, $$2 } /^##@/ { printf "\n\033[1m%s\033[0m\n", substr($$0, 5) } ' $(MAKEFILE_LIST)
