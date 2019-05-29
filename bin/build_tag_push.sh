#!/bin/bash

set -exuo pipefail

TAG=${1:-latest}

docker build -t gcr.io/lightning-sandbox/bitcoind:${TAG} --build-arg network=$2 .
docker push gcr.io/lightning-sandbox/bitcoind:${TAG}
