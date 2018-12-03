#!/usr/bin/env bash

if [ "$1" = "--help" ]; then
    cat <<EOF
  microkcs                      microcks environment
    sub commands:
      start                         start microcks' containers
EOF
exit 0
fi


echo "change directory to 'microcks'"
cd microcks
echo "docker-compose up"
docker-compose -f docker-compose.microcks.yml up -d