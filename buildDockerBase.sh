#!/bin/sh
docker build --rm --pull --no-cache -f AMPDockerfileUbuntu -t greelan/amp:ubuntu .
docker build --rm --pull --no-cache -f AMPDockerfileWineStaging -t greelan/amp:wine-staging .
docker build --rm --pull --no-cache -f AMPDockerfileSinusBot -t greelan/amp:sinusbot .
docker build --rm --pull --no-cache -f AMPDockerfileAMPBaseARM -t greelan/amp:arm .
docker build --rm --pull --no-cache -f AMPDockerfileAMPBaseARMJava -t greelan/amp:arm-java .
docker build --rm --pull --no-cache -f AMPDockerfileAMPBaseARMPython3 -t greelan/amp:arm-python3 .

docker push -a greelan/amp
