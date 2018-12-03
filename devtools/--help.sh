#!/usr/bin/env bash

if [ "$1" = "--help" ]; then
    cat <<EOF
  usage help                print this help
EOF
exit 0
fi

cat <<EOF
Usage:
  $1 [command]

Available commands:
EOF

for file in ./devtools/*
do
    if [[ -f $file ]]; then
        sh $file --help
    fi
done

for file in ./devtools/*/--help.sh
do
    if [[ -f $file ]]; then
        sh $file --help
    fi
done