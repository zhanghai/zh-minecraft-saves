#!/bin/bash

if [[ -d 'saves/' ]]; then
    rm -r saves/
fi

mkdir saves/
shopt -s extglob
cp -r ~/.minecraft/saves/!(NEI/) saves/
shopt -u extglob

git add -A
git commit -m "Saves updated $(date -R)"
git push
