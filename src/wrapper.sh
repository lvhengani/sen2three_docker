#!/bin/bash

source /root/sen2three/L3_Bashrc

if [$1 == ""]; then
    L3_Process -h
    exit 1
fi

L3_Process "/var/temp/unzipped_scenes/$@"

chown -R 1000 "/var/temp/unzipped_scenes/$1"