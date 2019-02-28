
#!/bin/sh
docker service scale jmeter-stack_slave=0
sleep 1
docker service scale jmeter-stack_slave=$1