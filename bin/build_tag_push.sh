#!/bin/bash

set -exuo pipefail

TAG=${1:-latest}

docker build -t gcr.io/lightning-sandbox/bitcoind:${TAG} .
docker login
docker push gcr.io/lightning-sandbox/bitcoind:${TAG}
