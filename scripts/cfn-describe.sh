#!/usr/bin/env bash

aws cloudformation describe-stacks --stack-name themindfulpaddler-site --query 'Stacks[].Outputs[]' --output table
