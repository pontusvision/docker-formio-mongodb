#!/bin/bash

DIR="$( cd "$(dirname "$0")" ; pwd -P )"
cd $DIR
docker build --rm . -t pontusvisiongdpr/pontus-formio-mongodb

docker push pontusvisiongdpr/pontus-formio-mongodb


