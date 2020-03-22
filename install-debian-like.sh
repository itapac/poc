#!/bin/sh

# itapac project: yggdrasil installation script for debian like distros (instructions from: https://yggdrasil-network.github.io/installation-linux-deb.html)

sudo apt-get install dirmngr

gpg --fetch-keys https://neilalexander.s3.dualstack.eu-west-2.amazonaws.com/deb/key.txt
gpg --export 569130E8CA20FBC4CB3FDE555898470A764B32C9 | sudo apt-key add -

echo 'deb http://neilalexander.s3.dualstack.eu-west-2.amazonaws.com/deb/ debian yggdrasil' | sudo tee /etc/apt/sources.list.d/yggdrasil.list
sudo apt-get update

sudo apt-get install yggdrasil
