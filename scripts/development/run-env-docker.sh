#!/bin/bash
if [ -n "$REBUILD" ] || [ $(docker images | grep 'jakubniewczas-com-dev' | wc -l) -eq 0 ] ; then
  docker build -t jakubniewczas-com-dev -f ./scripts/DevEnvDockerfile .
fi

docker run -it --rm \
  -v "$PWD":/usr/src/app \
  -p 3000:3000 \
  jakubniewczas-com-dev \
  middleman -p 3000
