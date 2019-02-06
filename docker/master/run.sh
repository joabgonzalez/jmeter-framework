#!/bin/sh
jmeter -n -t $1 -l results/test-result.jtl -e -o results/report -R $2