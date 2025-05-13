#!/bin/bash

set -e


apt-get update

apt-get install -y --no-install-recommends wget ca-certificates

wget "https://github.com/quarto-dev/quarto-cli/releases/download/v1.7.31/quarto-1.7.31-linux-amd64.deb" -O quarto.deb

dpkg -i quarto.deb

rm quarto.deb

quarto check install

rm -rf /var/lib/apt/lists/*