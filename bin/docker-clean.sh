#!/bin/bash
docker rm -v $(docker ps -a -q -f status=exited)
docker image prune
docker volume prune


