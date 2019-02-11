#!/bin/sh
read IP < /home/linux/performance/utils/ipAddressSlaves.csv
docker exec -it $(docker ps -f name=jmeter-stack_master* -q) \
sh /performance/apache-jmeter/bin/run.sh $1 $IP