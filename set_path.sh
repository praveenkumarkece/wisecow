#!/bin/bash

# Set the desired path in the PATH environment variable
export PATH="/usr/games:${PATH}"

# Execute the CMD (./wisecow.sh) specified in the Dockerfile
exec "$@"
