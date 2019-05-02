#!/bin/bash
SERVICE="jmeter-stack_influxdb"
NAME=$(echo $SERVICE | cut -d '_' -f 2)
PROCESS=$(docker ps | grep "$NAME" | awk '{ print $1 }')
echo "##################################################################################################"
docker ps --filter name=^/$SERVICE.*?$
echo "##################################################################################################"
docker exec -it $PROCESS influx