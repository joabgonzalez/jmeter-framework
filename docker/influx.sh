#!/bin/bash
NAME=$(echo jmeter-stack_influxdb | cut -d '_' -f 2)
PROCESS=$(docker ps | grep "tsoftglobal/jmeter:$NAME" | awk '{ print $1 }')
echo "##################################################################################################"
docker ps --filter name=^/jmeter-stack_influxdb.*?$
echo "##################################################################################################"
docker exec -it $PROCESS influx