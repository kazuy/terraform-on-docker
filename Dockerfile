FROM alpine:3.10.0

# install alpine packages
RUN apk update && \
    apk add --update-cache --no-cache curl python3-dev ca-certificates && \
    pip3 install awscli --upgrade && \
    rm -rf /var/cache/apk/*

# install terraform from latest
RUN curl https://releases.hashicorp.com/terraform/0.12.3/terraform_0.12.3_linux_amd64.zip > terraform.zip && \
    unzip terraform.zip && \
    cp -r terraform /usr/bin/ && \
    rm -rf terraform.zip

RUN adduser terraformer -D

ENV HOME /workspace
WORKDIR $HOME
