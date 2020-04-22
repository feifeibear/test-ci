# Container image that runs your code
FROM alpine:3.10

# Copies your code file from your action repository to the filesystem path `/` of the container

WORKDIR /workspace
COPY ./ /workspace/
# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/workspace/tools/entrypoint.sh"]
