FROM alpine
RUN apk add --update \
	tzdata \
	nextcloud-client
RUN rm -rf /var/cache/apk/*
RUN adduser -S user
RUN touch /.netrc && \
	chown 1000:1000 /.netrc && \
	chmod +rw /.netrc
USER user
ADD src/sync.sh /sync.sh
ENTRYPOINT /sync.sh
