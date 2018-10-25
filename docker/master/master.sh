#!/bin/sh
mkdir git-tmp
git clone $1 git-tmp/jmeter
mv git-tmp/jmeter/*.jmx .
rm -rf git-tmp
/bin/bash