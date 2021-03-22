#!/bin/bash
openssl rand -hex 32 > token.txt
export JUPYTER_TOKEN=`cat token.txt`
echo ${JUPYTER_TOKEN}
