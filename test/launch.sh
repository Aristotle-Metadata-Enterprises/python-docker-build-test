#!/usr/bin/env bash

while getopts d flag
do
    case "${flag}" in
        d) RUN_DEV=1;;
    esac
done

if [[ -z "$RUN_DEV" ]]; then
    echo "Running normal container on PORT 8000"
    docker run --name a7e_hello_app -p 8000:8000 --rm -i -t a7e_hello_app
else
    echo "Running dev container on PORT 8001"
    docker run --name a7e_hello_app_dev -p 8001:8000 --rm -i -t a7e_hello_app:dev
fi
