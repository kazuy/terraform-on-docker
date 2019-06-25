FROM alpine:3.10.0

RUN apk update && \
    apk add --update-cache --no-cache terraform python3-dev ca-certificates && \
    pip3 install awscli --upgrade && \
    rm -rf /var/cache/apk/*

RUN adduser terraformer -D

ENV HOME /workspace
WORKDIR $HOME
