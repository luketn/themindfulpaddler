#!/usr/bin/env bash

SUBDOMAIN=$1

echo "Started CloudFormation deployment of themindfulpaddler.com at "`date`"..."
aws cloudformation deploy --region us-east-1 --template-file ../template.yml --stack-name themindfulpaddler-site \
        --parameter-overrides \
            "HostedZoneName=themindfulpaddler.com." \
            "WebsiteAddress=themindfulpaddler.com" \
            "S3BucketName=themindfulpaddler-site" \
            "TlsCertificateArn=arn:aws:acm:us-east-1:204244381428:certificate/006b35ab-4b55-4ca2-a42e-c84e2766a4de"
echo "Finished CloudFormation deploy at "`date`

