#!/usr/bin/env bash

while getopts v: flag
do
    case "${flag}" in
        v) VERSION=${OPTARG};;
    esac
done

./test/build.sh
if [[ ! -z "$VERSION" ]]; then
    docker tag a7e_hello_app ghcr.io/aristotle-metadata-enterprises/a7e_hello_app:$VERSION
    docker push ghcr.io/aristotle-metadata-enterprises/a7e_hello_app:$VERSION
fi
echo "Publishing main container"
docker push ghcr.io/aristotle-metadata-enterprises/a7e_hello_app:latest
echo "Publishing dev container"
docker push ghcr.io/aristotle-metadata-enterprises/a7e_hello_app:dev