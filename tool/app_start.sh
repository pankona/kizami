#!/bin/bash -eu

# use like this:
# cmd="npm install && mix ecto.create && mix phoenix.server" ./app_start.sh

docker run \
    -it \
    --rm \
    -v "$PWD/../src":/code \
    -w /code \
    --link pg:db \
    -p 8080:4000 \
    pankona/phoenix /bin/bash -c "$cmd"
    #pankona/phoenix "$cmd"
