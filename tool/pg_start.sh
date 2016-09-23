#!/bin/bash -eu

docker run \
    -it \
    --rm \
    -p 5432:5432 \
    --name pg \
    pankona/postgres
