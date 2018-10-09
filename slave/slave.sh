mkdir git-tmp
git clone $1 git-tmp/jmeter
mv git-tmp/jmeter/*.csv .
rm -rf git-tmp
jmeter-server -D server.rmi.localport=50000 -D server_port=1099