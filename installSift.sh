#!/bin/bash

if [ $(id -u) -ne '0' ] ; then
    echo "Please run as root / sudo. Exiting"
    exit 1
fi
command -v dpkg || echo "Not an Ubuntu distro. Exiting" ; exit 1
command -v curl || apt -y update ; apt -y install curl 

curl -Lo /usr/local/bin/sift https://github.com/sans-dfir/sift-cli/releases/download/v1.7.1/sift-cli-linux
chmod +x /usr/local/bin/sift
sift -h