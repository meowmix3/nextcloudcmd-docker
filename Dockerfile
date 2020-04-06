FROM alpine
RUN apk add --update \
	tzdata \
	nextcloud-client
RUN rm -rf /var/cache/apk/*
RUN adduser -S user
USER user
ADD src/sync.sh /sync.sh
ENTRYPOINT /sync.sh
