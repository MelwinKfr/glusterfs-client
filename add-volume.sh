#!/bin/bash

if [ $# -eq 0 ]
  then
    echo "Usage : $0 <volume name> <volume server>"
    exit 1
fi

if [ -z "$2" ]
  then
    echo "Please set the gluster server the volume should be mounted from"
    exit 1
fi

re='^[0-9]+$'
if ! [[ $2 =~ $re ]] ; then
   echo "$2" > $1
else
  echo "gluster-store$2.weave.local" > $1
fi
