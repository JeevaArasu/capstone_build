#!/bin/bash

docker login -u $DOCKER_USERNAME -p $DOCKER_PASS


if [[$GIT_BRANCH == "origin/master"]]; then
docker tag capstone:latest jeevaarasu/react-app
docker push jeevaarasu/react-app

else if [[$GIT_BRANCH == "dev"]]; then
docker tag capstone:latest jeevaarasu/demo-app
docker push jeevaarasu/demo-app

fi
