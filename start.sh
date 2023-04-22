#!/bin/bash
if [ $# -eq 0 ]; then
    echo "Use arguments 'start' to launch container, 'stop' to stop container, 'restart' to restart container, 'url' for url, 'delete' to remove container"
    exit 1
else
    if [ $1 == 'start' ]; then
        docker run -d -p 56733:8080 --name=webapp -v $PWD/webapp:/webapp webapp
    elif [ $1 == 'stop' ]; then
        docker container stop webapp
    elif [ $1 == 'restart' ]; then
        docker container start webapp
    elif [ $1 == 'delete' ]; then
        docker container stop webapp
        docker container rm webapp
    else echo "use the following flags: 'start','stop','restart','url','delete'"
    fi
fi