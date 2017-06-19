#!/bin/bash
set -x -e
#mount -t glusterfs $GLUSTER_SERVER:/$GLUSTER_VOLUME /docker/$GLUSTER_VOLUME
mkdir -p /docker/volumes

for file in /docker/volumes/* do
  server=`cat $file`
  name=$(basename "$file")
  mount -t glusterfs $server:/$name /docker/$name
done

while true; do sleep 1; done;
