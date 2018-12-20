#!/usr/bin/env bash

. config.txt

docker inspect -f . ${name} >/dev/null
if [ $? -eq 0 ]; then
    docker start ${name}
else
    docker run --name ${name} -it -d -p ${port}:${port} ${REPOSITORY}:${TAG} -s "ss://${cipher}:${password}@:${port}"
fi
