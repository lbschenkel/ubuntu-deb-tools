#!/bin/sh
IMAGE=ubuntu-deb-tools
docker build -t $IMAGE .
docker rm -f $IMAGE
docker run -it --privileged --name $IMAGE $IMAGE \
	git-pbuilder create --components 'main restricted universe multiverse'
docker commit --change 'CMD bash' $IMAGE $IMAGE
