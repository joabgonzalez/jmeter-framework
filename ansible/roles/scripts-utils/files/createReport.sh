#!/bin/sh
docker exec -it $(docker ps -f name=jmeter-stack_master* -q) \
jmeter -g /performance/apache-jmeter/bin/results/test-result.jtl -o /performance/apache-jmeter/bin/results/report