#!/usr/bin/env bash
set -euo pipefail 

cd $HOME/www
kill $(cat .slugbyte-pid)
git pull origin master
yarn run stop 
yarn start &
echo $! > .slugbyte-pid
echo done
