#!/usr/bin/env bash
set -euo pipefail 

cd $HOME/www
kill $(cat .slugbyte-pid)
git pull origin master
yarn install
yarn start &
echo $! > .slugbyte-pid
echo done
