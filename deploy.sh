#!/usr/bin/env bash

cd scripts
./cfn-deploy.sh $SUBDOMAIN
./cfn-describe.sh $SUBDOMAIN
./deploy-site.sh $SUBDOMAIN
./test.sh $SUBDOMAIN
