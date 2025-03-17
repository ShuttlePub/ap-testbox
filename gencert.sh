#!/usr/bin/env bash

# Create the certs directory
mkdir -p ./certs/root
mkdir -p ./certs/nginx

# Build the gencert image and run it
docker build ./gencert/. -t shuttlepub/gencert:latest
docker run --mount "type=bind,source=./certs,target=/certs" -it shuttlepub/gencert:latest
