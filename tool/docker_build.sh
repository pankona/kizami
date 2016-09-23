#!/bin/bash -eu

docker build --force-rm -t pankona/phoenix  -f ./dockerfile_app .
docker build --force-rm -t pankona/postgres -f ./dockerfile_pg  .

