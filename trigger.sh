#! /usr/bin/env bash

set -e 

fly_target=$1

fly sp -t $fly_target configure -c pipeline.yml -p redis --load-vars-from creds.yml --load-vars-from params.yml -n
fly -t $fly_target up -p redis
fly -t $fly_target trigger-job -j redis/prepare-deployment --watch
fly -t $fly_target trigger-job -j redis/deploy-redis --watch
