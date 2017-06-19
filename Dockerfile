FROM ubuntu
RUN apt-get update && apt-get install -y openssl wget python-software-properties software-properties-common
RUN add-apt-repository ppa:gluster/glusterfs-3.10
RUN apt-get update && apt-cache search glusterfs* && apt-get install -y glusterfs-client glusterfs-common
ADD run.sh .
ADD add-volume.sh /usr/bin
CMD [ "bash","run.sh" ]
