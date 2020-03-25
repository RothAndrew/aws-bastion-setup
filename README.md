# aws-bastion-setup

Setup script for an Amazon Linux 2 bastion instance. Should be idempotent.

## What it does

1. Updates all yum packages
1. Sets up AWS CLI to use the instance profile creds

## Usage

```sh
curl https://raw.githubusercontent.com/RothAndrew/aws-bastion-setup/master/setup.sh | sh
```
