#!/bin/sh
docker image prune -f

docker build --rm --pull --no-cache --progress=plain --platform=linux/amd64 -f AMPDockerfileUbuntu -t greelan/amp:ubuntu .
#docker build --rm --pull --no-cache -f AMPDockerfileWineStaging -t greelan/amp:wine-staging .
#docker build --rm --pull --no-cache -f AMPDockerfileSinusBot -t greelan/amp:sinusbot .
docker build --rm --pull --no-cache --progress=plain --platform=linux/arm64 -f AMPDockerfileARM -t greelan/amp:arm .
docker build --rm --pull --no-cache --progress=plain --platform=linux/arm64 -f AMPDockerfileARMJava -t greelan/amp:arm-java .
docker build --rm --pull --no-cache --progress=plain --platform=linux/arm64 -f AMPDockerfileARMPython3 -t greelan/amp:arm-python3 .
docker build --rm --pull --no-cache --progress=plain --platform=linux/arm64 -f AMPDockerfileARMCPx -t greelan/amp:arm-cpx .
docker build --rm --pull --no-cache --progress=plain --platform=linux/arm64 -f AMPDockerfileARMCPxWine9 -t greelan/amp:arm-cpx-wine9 .

docker push -a greelan/amp
