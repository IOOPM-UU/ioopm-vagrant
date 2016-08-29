#!/usr/bin/env bash

# fix hostname
sudo echo "127.0.0.1 ubuntu-xenial" >> /etc/hosts

sudo apt-get update

### emacs
sudo apt-get install -y unzip
sudo apt-get install -y emacs24-nox

wget http://wrigstad.com/ioopm/emacs-setup-linux.zip
mkdir .emacs.d
unzip emacs-setup-linux.zip -d .emacs.d
sudo chown -R vagrant .emacs.d
rm emacs-setup-linux.zip

#### programming tools
sudo apt-get install -y git build-essential gdb gdb clang lldb valgrind libcunit1 libcunit1-dev libcunit1-doc
sudo apt-get install -y openjdk-9-jdk-headless
sudo apt-get install -y ack-grep

sudo apt-get install -y afl

touch ~/done
