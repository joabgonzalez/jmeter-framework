#!/bin/sh
date=`date "+%Y%m%d%H%M%S"`
docker exec -it $(docker ps -f name=jmeter-stack_master* -q) \
cat /performance/apache-jmeter/bin/results/test-result.jtl > $date.jtl