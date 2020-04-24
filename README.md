Nextcloudcmd Dockerfile for syncing Nextcloud files

Either clone the repo & edit the `start.sh` file, or run something like:

```
docker build -t nextcloudcmd .
docker run -it --rm \
	--name=nextcloudcmd \
	-e TZ=America/New_York \
	-u 1000:1000  \
	-e NEXT_SERVER="" \
	-e NEXT_USER="" \
	-e NEXT_PASS="" \
	-v $(pwd)/data:/data \
	nextcloudcmd
```

The entrypoint is a short shell script that takes the variables and passes them to nextcloudcmd and syncs your Nextcloud files to `/data`.

### Please!
Feel free to message me, open issues, make a pull request, or suggest any changes!

