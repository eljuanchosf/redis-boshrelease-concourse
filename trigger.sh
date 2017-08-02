#! /usr/bin/env bash

fly sp -t test configure -c pipeline.yml -p redis --load-vars-from creds.yml -n
fly -t test up -p redis
fly -t test trigger-job -j redis/job-deploy
fly -t test watch -j redis/job-deploy
