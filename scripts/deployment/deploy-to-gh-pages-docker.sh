#!/bin/bash
if [ "$NO_BUILD" = "" ] ; then
  echo -e "!!\n!! You can skip building part by setting NO_BUILD env var\n!!\n"
  docker build -t jakubniewczas-com-dev -f ./scripts/DevEnvDockerfile .
fi

docker run -it --rm \
  -v "$PWD":/usr/src/app \
  -v "$HOME/.ssh":/root/.ssh \
  -p 3000:3000 \
  jakubniewczas-com-dev \
  middleman deploy