#!/usr/bin/env bash

aws cloudformation describe-stacks --stack-name qualitymovement-site --query 'Stacks[].Outputs[]' --output table
