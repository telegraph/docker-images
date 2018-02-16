#!/usr/bin/env bash

pushd
cd deep-learning

docker build -t telegraph/deep-learning:$(cat version) .
docker push telegraph/deep-learning:$(cat version)
docker tag telegraph/deep-learning:$(cat version) telegraph/deep-learning:latest
docker push telegraph/deep-learning:latest


