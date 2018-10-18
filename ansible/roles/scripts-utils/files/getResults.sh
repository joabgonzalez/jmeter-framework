#!/bin/sh
date=`date "+%Y%m%d%H%M%S"`
docker exec -it $1 cat /performance/apache-jmeter/$2 > $date.jtl