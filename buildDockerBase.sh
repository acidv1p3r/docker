#!/bin/sh
docker image prune -f

docker build --rm --pull --no-cache --progress=plain --platform=linux/amd64 -f AMPDockerfileUbuntu -t greelan/amp:ubuntu .
#docker build --rm --pull --no-cache -f AMPDockerfileWineStaging -t greelan/amp:wine-staging .
#docker build --rm --pull --no-cache -f AMPDockerfileSinusBot -t greelan/amp:sinusbot .
docker build --rm --pull --no-cache --progress=plain --platform=linux/arm64 -f AMPDockerfileAMPBaseARM -t greelan/amp:arm .
docker build --rm --pull --no-cache --progress=plain --platform=linux/arm64 -f AMPDockerfileAMPBaseARMJava -t greelan/amp:arm-java .
docker build --rm --pull --no-cache --progress=plain --platform=linux/arm64 -f AMPDockerfileAMPBaseARMPython3 -t greelan/amp:arm-python3 .
docker build --rm --pull --no-cache --progress=plain --platform=linux/arm64 -f AMPDockerfileAMPBaseARMCPx -t greelan/amp:arm-cpx .
docker build --rm --pull --no-cache --progress=plain --platform=linux/arm64 -f AMPDockerfileAMPBaseARMCPxWine9 -t greelan/amp:arm-cpx-wine9 .

docker push -a greelan/amp
