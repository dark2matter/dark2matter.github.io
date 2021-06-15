#! /usr/bin/env bash

for x in `cat users.csv`; do
    username=$(echo $x | cut -d ',' -f1)
    userface=$(echo $x | cut -d ',' -f2)
    if [ "$(echo $userface | grep -Eiv 'NONE')" ]; then
        wget -c $userface -A jpeg,jpg,bmp,gif,png -O images/$username\.png
    fi
done
