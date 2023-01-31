#!/bin/bash

PROFILE_PATH="/usr/share/archiso/configs/releng"

cd /root

mkdir -p "$(pwd)"/build
mkdir -p "$(pwd)"/bin

mkarchiso -v -w "$(pwd)"/build -o "$(pwd)"/bin $PROFILE_PATH

if [[ -d "/gem" ]]; then
    cp -r /root/bin/*.iso /gem/gem.iso
fi