#!/bin/sh
docker build --rm -f AMPDockerfileUbuntu -t greelan/amp:ubuntu .
docker build --rm -f AMPDockerfileWineStaging -t greelan/amp:wine-staging .
docker build --rm -f AMPDockerfileSinusBot -t greelan/amp:sinusbot .

docker push -a greelan/amp
