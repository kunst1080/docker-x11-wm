#!/bin/bash

set -u

docker rmi kunst1080/x11-wm:$1
docker build $1 -t kunst1080/x11-wm:$1
