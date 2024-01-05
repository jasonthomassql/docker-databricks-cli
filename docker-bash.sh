#!/bin/bash

docker run --rm -it \
  --volume ${PWD}/.databrickscfg:/root/.databrickscfg \
  --volume ${PWD}/script:/script \
  --volume ${PWD}/stage:/stage \
  -e PUID=1031 \
  -e PGID=65537 \
  --entrypoint "/bin/sh" \
  databricks-cli
