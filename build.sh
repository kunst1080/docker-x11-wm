#!/bin/bash

set -u

docker build $1 -t kunst1080/x11-wm:$1
