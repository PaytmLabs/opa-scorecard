#!/bin/bash

IMAGE=${1:-paytmlabs/opa_scorecard_exporter:v0.0.4-labs-0.0.1}


docker build --tag="${IMAGE}" .
docker push "${IMAGE}"
