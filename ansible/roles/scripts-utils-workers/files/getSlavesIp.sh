#!/bin/sh
docker rm $(docker ps -aq)
clear
docker inspect -f '{{.Name}} - {{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $(docker ps -aq) | grep jmeter-stack_slave | grep -oP "\d+\.\d+\.\d+\.\d+"