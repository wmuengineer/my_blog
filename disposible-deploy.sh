#!/usr/bin/env bash
echo "Starting"
echo "Download Cli"
cd ../
wget -qO cf-linux-amd64.tgz 'https://cli.run.pivotal.io/stable?release=linux64-binary&source=github' && \ tar -zxvf cf-linux-amd64.tgz && \ rm cf-linux-amd64.tgz
export PATH=$PATH:$PWD
echo "CF Login"
cf api "$CF_API_URL"
cf login -u "$CF_USER" -p "$CF_PASS" -o "$CF_ORG" -s master
echo "Start Deploy"
cd my_blog/
rm -rf vendor/bundle
cf push adam-blog -f ./master-manifest.yml --no-start
cf logout
echo "Deploy Complete"
