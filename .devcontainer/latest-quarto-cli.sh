#!/bin/bash

set -e

apt-get update

apt-get install -y --no-install-recommends wget ca-certificates

wget -qO- https://quarto.org/docs/download/_download.json | grep -oP "(?<=\"download_url\":\s\")https.*amd64\.deb -O quarto.deb
dpkg -i quarto.deb
rm quarto.deb

quarto check install

rm -rf /var/lib/apt/lists/*
