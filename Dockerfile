FROM mhart/alpine-node:8

RUN apk add --update python make g++ git inotify-tools
RUN npm i -g gulp-cli jshint@2.x grunt bower
RUN mkdir /var/www
RUN rm -rf /var/cache/apk/*
ADD init.sh /init.sh

ENV WORKING_DIR /var/www