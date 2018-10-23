#!/usr/bin/env bash

cd services/core
git submodule init
git remote rename origin upstream
git remote add origin https://github.com/<my_username>/sheypro-core.git
git checkout master