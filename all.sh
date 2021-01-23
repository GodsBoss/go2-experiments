#!/bin/bash

all=$(find . -name '*.go2' | xargs dirname | uniq)

for d in ${all}
do
  echo "Run go2go ${1} ${d}:"
  docker run --rm -it -v ${PWD}/${d}:/home/godev/project --workdir /home/godev/project godsboss/go2go -brackets ${1}
done
