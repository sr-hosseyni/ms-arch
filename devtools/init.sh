#!/usr/bin/env bash
mkdir -p services
echo 'services' >> .gitignore
services=$(cat 'manifest.txt' | awk '{print $2}')
cd services
for service in $services;
do
    git clone $service
done;