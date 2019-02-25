#!/bin/sh
docker build -t joabgonzalez/jmt-$1 --no-cache $1/.
sleep 1
docker push joabgonzalez/jmt-$1