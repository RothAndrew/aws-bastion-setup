#!/usr/bin/env bash

sudo yum update -y

mkdir -p ~/.aws
cat <<EOF > ~/.aws/config
[default]
region = us-east-1
output = json
credential_source = Ec2InstanceMetadata
EOF
