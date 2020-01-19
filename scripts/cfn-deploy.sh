#!/usr/bin/env bash

SUBDOMAIN=$1

echo "Started CloudFormation deployment of qualitymovement.org at "`date`"..."
aws cloudformation deploy --region us-east-1 --template-file ../template.yml --stack-name qualitymovement-site \
        --parameter-overrides \
            "HostedZoneName=qualitymovement.org." \
            "WebsiteAddress=qualitymovement.org" \
            "S3BucketName=qualitymovement-site" \
            "TlsCertificateArn=arn:aws:acm:us-east-1:204244381428:certificate/ee0c4535-d0b9-455f-8d9e-f8b9b338eb49"
echo "Finished CloudFormation deploy at "`date`

