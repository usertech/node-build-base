FROM alpine

RUN apk add --update \
 python \
 py-pip \
 groff \
 && pip install --upgrade awscli \
 && rm -rf /var/cache/apk/*
