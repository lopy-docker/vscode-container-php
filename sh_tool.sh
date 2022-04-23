#!/bin/bash

echo "install tools by apt"

apt update
apt install -y bash-completion

echo "auto remove and clean apt cache"
apt autoremove -y
apt clean -y
apt autoclean -y
rm -rf /var/cache/apt/* 

echo "other tools"
wget -O /usr/local/bin/fetch https://github.com/gruntwork-io/fetch/releases/download/v0.4.4/fetch_linux_amd64
chmod +x /usr/local/bin/fetch
