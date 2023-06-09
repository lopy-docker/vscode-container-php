#!/bin/bash

# exec this script by user vscode

if [ "${NODE_VERSION}" == "none" ]; then
echo "do not install node"
exit;
fi
echo "install node"

# /usr/local/share/nvm/nvm.sh && nvm install ${NODE_VERSION}

source /usr/local/share/nvm/nvm.sh  

nvm install ${NODE_VERSION}

npm install -g commitizen cz-conventional-changelog  conventional-changelog-cli standard-version
echo '{ "path": "cz-conventional-changelog" }' > ~/.czrc