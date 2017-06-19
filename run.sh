#!/bin/bash
set -x -e
DIR=/docker/volumes
#mount -t glusterfs $GLUSTER_SERVER:/$GLUSTER_VOLUME /docker/$GLUSTER_VOLUME
mkdir -p $DIR

if [ "$(ls -A $DIR)" ]; then
  for file in $DIR/*;
   do
    server=$(cat $file);
    name=$(basename "$file");
    mount -t glusterfs $server:/$name /docker/$name;
  done;
fi

while true; do sleep 1; done;
