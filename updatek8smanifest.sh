#!/bin/bash

set -x

REPO_URL="https://github.com/harsha-ops/Simple-Voting-APP-ArgoCD.git"

git clone "$REPO_URL" /tmp/repo

cd /tmp/repo

sed -i "s|image:.*|image: $2|g" k8s-manifest/$1-deploy.yml

git add .

git commit -m "Update kubernetes Manifest"

git push

rm -rf /tmp/repo
