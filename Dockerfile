FROM alpine

RUN echo @edge http://nl.alpinelinux.org/alpine/edge/community >> /etc/apk/repositories && \
 echo @edge http://nl.alpinelinux.org/alpine/edge/main >> /etc/apk/repositories && \
 apk update && apk upgrade 

RUN apk add autoconf \
 automake \
 bash \
 build-base \
 dnsmasq \
 file \
 gettext \
 git \
 jpeg-dev \
 libjpeg-turbo-dev \
 libjpeg-turbo \
 libpng-dev \
 libpng \
 libwebp-dev \
 libwebp \
 nasm \
 nodejs \
 yarn \
 zlib-dev \
 zlib \
 ca-certificates \
 python \
 py-pip \
 groff && \
 apk add --no-cache \
 chromium@edge \
 nss@edge \
 harfbuzz@edge && \
 pip install --upgrade awscli && \
 update-ca-certificates && \
 rm -rf /var/cache/apk/* && \
 yarn add puppeteer@1.9.0

ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD true

ENV NODE_PATH /usr/lib/node_modules

WORKDIR	/opt/
