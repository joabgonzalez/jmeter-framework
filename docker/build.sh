#!/bin/sh
# docker build -t joabgonzalez/jmeter:$1 --no-cache $1/.
docker build -t tsoftglobal/jmeter:$1 --no-cache $1/.
sleep 1
docker push tsoftglobal/jmeter:$1