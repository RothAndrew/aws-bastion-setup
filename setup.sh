#!/usr/bin/env bash

sudo yum update -y

echo -e "Enter the default region you want to use: "
read region
mkdir -p ~/.aws
cat <<EOF > ~/.aws/config
[default]
region = $region
output = json
credential_source = Ec2InstanceMetadata
EOF
