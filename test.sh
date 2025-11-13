#!/usr/bin/env bash
set -e
set -o pipefail

flags=''
[[ -z "$(git branch -r | grep 'origin/gh-pages')" ]] && flags+='--orphan -b' #|| true
echo $flags
echo 'ok'
