#/bin/bash

ORG_NAME=alvinpai
RANDOM_NAME=$(date +%s)
TAG_NAME=$ORG_NAME/estuary:$RANDOM_NAME

# build
docker build . -t $TAG_NAME
docker push $TAG_NAME