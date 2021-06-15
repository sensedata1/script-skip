#!/bin/bash

# get homebrew /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
# get node js https://nodejs.org/en/download

curl "https://awscli.amazonaws.com/AWSCLIV2.pkg" -o "AWSCLIV2.pkg"
sudo installer -pkg AWSCLIV2.pkg -target /

brew tap aws/tap
brew install aws-sam-cli

go get github.com/flosell/iam-policy-json-to-terraform
sudo npm install -g typescript
pip3 install awsume
aws configure

which aws_completer
#add the above path to ~/.bash_profile like PATH="/usr/local/bin/aws_completer:$PATH"

#to activate completion
complete -C '/usr/local/bin/aws_completer' aws


brew update-reset

brew install semver
#if homebrew is broken
git config --global http.postBuffer 524288000

#But this issue still exists with this mirror. Follow this steps to fix it.
git clone https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/homebrew-core.git.
#copy the directory homebrew-core to /usr/local/Homebrew/Library/Taps/homebrew/
