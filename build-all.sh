#!/usr/bin/env bash

echo "Building Docker images"
for name in * ; do
    if [[ -d ${name} ]]; then
        cd ${name}
        echo "  >> Building telegraph/${name}:$(cat version)"
        docker build -t telegraph/${name}:$(cat version) .
        docker tag telegraph/${name}:$(cat version) telegraph/${name}:latest
        echo "  >> Pushing telegraph/${name}:$(cat version)"
        docker push telegraph/${name}:$(cat version)
        docker push telegraph/${name}:latest
        echo ""
        cd ..
    fi
done
echo "Done"
