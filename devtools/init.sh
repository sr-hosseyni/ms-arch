#!/usr/bin/env bash

if [ "$1"=="--help" ]; then
    cat <<EOF
  init                      Setup environment
EOF
exit 0
fi

mkdir -p services
echo 'services' >> .gitignore
services=$(cat 'manifest.txt' | awk '{print $2}')
cd services
for service in $services;
do
    git clone $service
done;