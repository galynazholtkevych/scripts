# /usr/bin/bash

# TODO: to be improved: NAMES head goes to containers_names
containers_names=$(docker ps --all | egrep "$NAMES"'[^-]' | awk '{ print $NF }')
echo "Containers" $containers_names
docker stop $containers_names
docker rm $containers_names

