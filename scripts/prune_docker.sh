#!/bin/bash

docker system prune --volumes -f
docker container prune
docker image prune -a
docker network prune
