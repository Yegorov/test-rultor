#!/usr/bin/env bash
set -e
set -o pipefail

# git branch -r | grep 'origin/gh-pages' | true
# git branch -r | grep 'origin/gh-pages' || true

flags=''
[[ -z "$(git branch -r | grep 'origin/gh-pages')" ]] && flags+='--orphan' #|| true
echo $flags
echo 'ok'
