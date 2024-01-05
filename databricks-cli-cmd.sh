#!/usr/bin/env bash

# Runs the specified  databricks command using the specified configuration file

echo $1

CMD="docker run --interactive \
                --rm \
                --tty \
                --volume ${2:-${PWD}/.databrickscfg}:/root/.databrickscfg:ro \
				--volume ${2:-${PWD}/script}:/script \
                --volume ${2:-${PWD}/stage}:/stage \
                --env PUID=1031 \
                --env PGID=65537 \
                databricks-cli:latest databricks ${1:-version}"
echo $CMD
$CMD
