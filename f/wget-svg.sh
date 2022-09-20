#!/usr/bin/env bash

DIR=$(dirname $(realpath "$0"))
cd $DIR
set -ex

#echo https://simpleicons.org/

name=$1
logo=$2
logoColor=04e
url="https://shields.io/badge/$name-fff?logo=$logo&logoColor=$logoColor&style=for-the-badge"
echo $url
wget $url -O $name.svg

sd -s "#333" "#$logoColor" $name.svg
