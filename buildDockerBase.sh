#!/bin/sh
docker image prune -f

docker build --rm --pull --no-cache --progress=plain --platform=linux/amd64 -f AMPDockerfileUbuntu -t acidv1p3r/amp:ubuntu .
docker build --rm --pull --no-cache --progress=plain --platform=linux/amd64 -f AMPDockerfileUptimeKuma2 -t acidv1p3r/amp:uptimekuma2 .
#docker build --rm --pull --no-cache -f AMPDockerfileWineStaging -t acidv1p3r/amp:wine-staging .
#docker build --rm --pull --no-cache -f AMPDockerfileSinusBot -t acidv1p3r/amp:sinusbot .
docker build --rm --pull --no-cache --progress=plain --platform=linux/arm64 -f AMPDockerfileARM -t acidv1p3r/amp:arm .
docker build --rm --pull --no-cache --progress=plain --platform=linux/arm64 -f AMPDockerfileARMJava -t acidv1p3r/amp:arm-java .
docker build --rm --pull --no-cache --progress=plain --platform=linux/arm64 -f AMPDockerfileARMPython3 -t acidv1p3r/amp:arm-python3 .
docker build --rm --pull --no-cache --progress=plain --platform=linux/arm64 -f AMPDockerfileARMCPx -t acidv1p3r/amp:arm-cpx .
docker build --rm --pull --no-cache --progress=plain --platform=linux/arm64 -f AMPDockerfileARMCPxWine9 -t acidv1p3r/amp:arm-cpx-wine9 .

docker push -a acidv1p3r/amp
