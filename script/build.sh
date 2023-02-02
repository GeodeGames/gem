#!/bin/bash

TEMPLATE_PATH="/usr/share/archiso/configs/releng"
PROFILE_PATH="/root/gemlive"

cp -r $TEMPLATE_PATH $PROFILE_PATH

cd /root

mkdir -p "$(pwd)"/build
mkdir -p "$(pwd)"/bin

mkarchiso -v -w "$(pwd)"/build -o "$(pwd)"/bin $PROFILE_PATH

if [[ -d "/gem" ]]; then
    cp /root/bin/*.iso /gem/gem.iso
fi