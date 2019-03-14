#!/bin/sh
jmeter -n -t $1 -l results/test-result.jtl -R $2