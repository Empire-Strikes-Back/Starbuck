#!/bin/bash

push(){
  ORIGIN=$(git remote get-url origin)
  rm -rf .git
  git init -b main
  git remote add origin $ORIGIN
  git config --local include.path ../.gitconfig
  git add .
  git commit -m "we are cljc-libraries"
  git push -f -u origin main
}

"$@"