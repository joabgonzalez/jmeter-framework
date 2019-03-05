#!/bin/sh
git clone $1 git-tmp/jmeter
cp -vrf git-tmp/jmeter/bin/*.csv .
cp -vrf git-tmp/jmeter/lib/* ../lib/.
rm -vrf git-tmp/jmeter
jmeter-server -D server.rmi.localport=50000 -D server_port=1099