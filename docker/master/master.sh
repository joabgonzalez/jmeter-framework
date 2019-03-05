#!/bin/sh
chmod +x run.sh
git clone $1 git-tmp/jmeter
cp -vrf git-tmp/jmeter/bin/*.jmx .
cp -vrf git-tmp/jmeter/lib/* ../lib/.
rm -vrf git-tmp/jmeter
/bin/sh