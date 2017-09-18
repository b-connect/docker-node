FROM node:8

RUN apt install python make g++
RUN npm i -g gulp-cli jshint@2.x grunt bower
ADD init.sh /init.sh

ENV WORKING_DIR /var/www
ENTRYPOINT ["/init.sh"]