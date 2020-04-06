#!/bin/bash
docker stop nextcloudcmd
docker rm nextcloudcmd
docker build -t nextcloudcmd .
mkdir data
docker run -it --rm \
	--name=nextcloudcmd \
	-e TZ=America/New_York \
	-u 1000:1000  \
	-e NEXT_SERVER="" \
	-e NEXT_USER="" \
	-e NEXT_PASS="" \
	-v $(pwd)/data:/data \
	nextcloudcmd
