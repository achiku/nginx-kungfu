#!/bin/bash

VERSION=0.6.8
DOWNLOAD_URL=https://github.com/cubicdaiya/nginx-build/releases/download

if [[ ! -d ./bin ]]; then 
    mkdir ./bin
fi

wget ${DOWNLOAD_URL}/v${VERSION}/nginx-build-darwin-amd64-${VERSION}.tar.gz -O ./bin/${VERSION}.tar.gz
(
    cd ./bin
    tar xvfz ${VERSION}.tar.gz
    rm ${VERSION}.tar.gz
)

for d in 'tmp run log work etc'; do
    mkdir -p ${d}
done
