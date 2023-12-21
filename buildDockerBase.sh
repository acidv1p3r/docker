#!/bin/sh
docker build --rm -f AMPDockerFileUbuntu -t greelan/amp:ubuntu .
docker build --rm -f AMPDockerFileWineStaging -t greelan/amp:wine-staging .
docker build --rm -f AMPDockerFileSinusBot -t greelan/amp:sinusbot .

docker push -a greelan/amp
