#!/bin/bash

WEBHOOK_VERSION=2.8.1

# Сборка
docker buildx build --output type=docker --progress=plain \
  --build-arg="WEBHOOK_VERSION=$WEBHOOK_VERSION" \
  -f Dockerfile -t coralhl/webhook:latest -t coralhl/webhook:$WEBHOOK_VERSION .
# Заливка в регистр
#docker push coralhl/webhook:latest
#docker push coralhl/webhook:$WEBHOOK_VERSION
