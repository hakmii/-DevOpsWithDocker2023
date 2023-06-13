#!/usr/bin/bash
if test "$#" -ne 2; then
        echo "Usage: $0 githubuser/reponame dockerhubuser/reponame"
        exit
fi
git clone https://github.com/$1 tmp
docker build ./tmp -t container
docker login
docker tag container $2
docker push  $2
rm -rf ./tmp
