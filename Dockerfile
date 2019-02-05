FROM alpine

RUN apk add --update\
 autoconf\
 automake\
 bash\
 build-base\
 dnsmasq\
 file\
 gettext\
 git\
 jpeg-dev\
 libjpeg-turbo-dev\
 libjpeg-turbo\
 libpng-dev\
 libpng\
 libwebp-dev\
 libwebp\
 nasm\
 nodejs\
 yarn\
 zlib-dev\
 zlib\
 ca-certificates\
 && update-ca-certificates

ENV NODE_PATH /usr/lib/node_modules

WORKDIR	/opt/