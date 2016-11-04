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
cf login -u "$CF_USER" -p "$CF_PASS" -o "$CF_ORG" -s "$CI_BRANCH"
echo "Start Deploy"
cd /home/rof/src/github.com/wmuengineer/my_blog/
rm -rf vendor/bundle
cf rename adam_blog adam_blog-old
cf push adam_blog -f ./"$CI_BRANCH"-manifest.yml --no-start
cf start adam_blog
cf delete adam_blog-old -f
cf logout
echo "Deploy Complete"
