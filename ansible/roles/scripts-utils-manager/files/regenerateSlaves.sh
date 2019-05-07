
#!/bin/sh
docker service scale jmeter-stack_slave=0
sleep 5s
docker service scale jmeter-stack_slave=$1