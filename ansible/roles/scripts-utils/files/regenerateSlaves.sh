docker service scale slave=0
sleep .5
docker service scale slave=$1