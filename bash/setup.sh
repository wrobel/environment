#!/bin/bash

if [ -z "$1" ]; then
    ENVIRONMENT=${HOME}/environment
else
    ENVIRONMENT=$1
fi

if [ -z "`grep ENVIRONMENT./bash/init ${HOME}/.bashrc`" ]; then
    echo "export ENVIRONMENT=\"${ENVIRONMENT}\" && . \${ENVIRONMENT}/bash/init" >> ${HOME}/.bashrc
    echo "The environment is now included in your .bashrc!"
    exit 0
else
    echo "The environment is already included in your .bashrc!"
    exit 1
fi
