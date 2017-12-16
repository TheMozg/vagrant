#!/bin/sh

# $1 - node index, 1-4
if [ -z "$1" ]
then
    echo "ERROR: please specify node index"
    exit 1
fi

ssh -i vagrant_key -p 222$1 vagrant@themozg.ddns.net
