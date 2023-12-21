#!/bin/sh
docker build --rm --pull --no-cache -f AMPDockerfileUbuntu -t greelan/amp:ubuntu .
docker build --rm --pull --no-cache -f AMPDockerfileWineStaging -t greelan/amp:wine-staging .
docker build --rm --pull --no-cache -f AMPDockerfileSinusBot -t greelan/amp:sinusbot .

docker push -a greelan/amp
