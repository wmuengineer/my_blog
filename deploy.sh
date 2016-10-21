#!/usr/bin/env bash

env

#CF Zero Downtime Deployment Script
echo "Starting"
echo "Download Cli"
cd ../
wget -qO cf-linux-amd64.tgz 'https://cli.run.pivotal.io/stable?release=linux64-binary&source=github' && \
  tar -zxvf cf-linux-amd64.tgz && \
  rm cf-linux-amd64.tgz
export PATH=$PATH:$PWD

echo "CF Login"
cf api "$CF_API_URL"
cf login -u "$CF_USER" -p "$CF_PASS" -o "$CF_ORG" -s "$TRAVIS_BRANCH"

cf logout
echo "Deploy Complete"

exit 0
