#! /usr/bin/env bash

set -e -x

fly sp -t test configure -c pipeline.yml -p redis --load-vars-from creds.yml --load-vars-from params.yml -n
fly -t test up -p redis
fly -t test trigger-job -j redis/prepare-deployment --watch
fly -t test trigger-job -j redis/deploy-redis --watch
