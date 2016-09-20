#!/bin/bash -eu

# use like this:
# cmd="service postgresql start && npm install && mix ecto.create && mix phoenix.server" ./docker_run.sh

docker run \
    -it \
    --rm \
    -v "$PWD/../src":/code \
    -w /code \
    -p 8080:4000 \
    pankona/phoenix "$cmd"
