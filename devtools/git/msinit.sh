#!/usr/bin/env bash

if [ "$1"=="--help" ]; then
    cat <<EOF
  init                      Setup environment
EOF
exit 0
fi

cd services/core
git submodule init
git remote rename origin upstream
git remote add origin https://github.com/<my_username>/sheypro-core.git
git checkout master