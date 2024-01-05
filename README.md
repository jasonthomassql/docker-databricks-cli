# Overview
This project is a simple Docker image that provides access to the latest -preview-
[Databricks (CLI Client)](https://docs.databricks.com/en/dev-tools/cli/).  


# Prerequisites
* a working [Docker](http://www.docker.com) engine
* a working [Docker Compose](https://docs.docker.com/compose/) installation

# Building
Type `./build.sh` to build the image.

# Installation
Docker will automatically install the newly built image into the cache.

# Tips and Tricks
Create a .databrickscfg file in your git folder.  Paste the following into that file:

```[DEFAULT]
host  = <yourhost>
token = <xxxxxxxxxxxxxxxxxx>```

## Launching The Image
* Use `./databricks-cli-cmd.sh` to get your databricks version.
* Use `./databricks-cli-cmd.sh "jobs list"` to get your current jobs.

# Troubleshooting

# License and Credits
This project is licensed under the
[Apache License Version 2.0, January 2004](http://www.apache.org/licenses/).

* [Databricks Documentation](https://docs.databricks.com)

# List of Changes
