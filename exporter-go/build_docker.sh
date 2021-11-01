#!/bin/bash

IMAGE=${1:-ghcr.io/paytmlabs/opa_scorecard_exporter:v0.0.4-labs-0.0.1}


docker build --tag="${IMAGE}" .

# Push will fail unless docker is logged in to a Github account with write access to the Packages repo
# See https://docs.github.com/en/packages/working-with-a-github-packages-registry/working-with-the-container-registry#authenticating-to-the-container-registry
docker push "${IMAGE}"
