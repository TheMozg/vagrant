#!/bin/sh

# $1 - ngrok port
if [ -z "$1" ]
then
    echo "ERROR: please specify ngrok port"
    exit 1
fi

ssh -i vagrant_key -p $1 vagrant@0.tcp.eu.ngrok.io
