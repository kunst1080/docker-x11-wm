#!/bin/bash

set -u

IMAGE=kunst1080/x11-wm:$1
docker rmi $IMAGE
docker build $1 -t $IMAGE
