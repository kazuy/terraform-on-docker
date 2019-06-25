FROM alpine:3.10.0

RUN apk update && \
    apk add --update-cache --no-cache terraform

RUN adduser terraformer -D

ENV HOME /workspace
WORKDIR $HOME
