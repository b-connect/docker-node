#!/bin/sh

cd $WORKING_DIR
pwd
npm i 
bower i --allow-root

while inotifywait -r -e close_write "$WORKING_DIR"
do
    gulp
done