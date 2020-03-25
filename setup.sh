#!/usr/bin/env bash

sudo yum update -y

if [ ! -d ~/.aws ]; then
  mkdir -p ~/.aws
  cat <<EOF > ~/.aws/config
[default]
region = us-east-1
output = json
credential_source = Ec2InstanceMetadata
EOF
fi

sudo yum install git -y

if [ ! -d ~/.asdf ]; then
  git clone https://github.com/asdf-vm/asdf.git ~/.asdf
  cd ~/.asdf
  git checkout "$(git describe --abbrev=0 --tags)"
  echo -e '\n. $HOME/.asdf/asdf.sh' >> ~/.bashrc
  echo -e '\n. $HOME/.asdf/completions/asdf.bash' >> ~/.bashrc
  source ~/.bashrc
fi
