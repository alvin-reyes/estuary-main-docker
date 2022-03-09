#/bin/bash

ORG_NAME=alvinpai
TAG_NAME=estuary:v1.0.0

docker pull $ORG_NAME/$TAG_NAME
docker run -d -p 3004:3004 $ORG_NAME/$TAG_NAME

sleep 3

## Quick Test
curl "localhost:3004/user/stats"