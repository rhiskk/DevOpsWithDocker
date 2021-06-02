#!/bin/bash

echo " "

echo give a project github url to push to docker hub:

read url

git clone $url

echo " "

echo give project folder name:

read name

docker login

docker build -t ruuskhis/push:latest ./$name/

docker push ruuskhis/push:latest
