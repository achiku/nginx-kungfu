#!/bin/bash

VERSION=0.6.7

if [[ ! -d ./bin ]]; then 
    mkdir ./bin
fi
wget https://github.com/cubicdaiya/nginx-build/releases/download/v${VERSION}/nginx-build-darwin-amd64-${VERSION}.tar.gz -O ./bin/${VERSION}.tar.gz
(
    cd ./bin
    tar xvfz ${VERSION}.tar.gz
    rm ${VERSION}.tar.gz
)
