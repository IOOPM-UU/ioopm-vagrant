#!/usr/bin/env bash

# fix hostname
sudo echo "127.0.0.1 ubuntu-xenial" >> /etc/hosts

sudo apt-get update

### emacs
sudo apt-get install -y emacs24-nox

# start and quit emacs to install spacemacs
# emacs --insecure -f kill-emacs

#### programming tools
sudo apt-get install -y git build-essential gdb gdb clang lldb valgrind libcunit1 libcunit1-dev libcunit1-doc
sudo apt-get install -y openjdk-9-jdk-headless
sudo apt-get install -y ack-grep

touch ~/done
