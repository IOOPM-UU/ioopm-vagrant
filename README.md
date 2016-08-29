## IOOPM Vagrant

This small project will help you get started with tools for IOOPM quickly.
This project will set up a virtual machine that runs a version of Ubuntu,
but is preconfigured to provide tools needed in [IOOPM](http://wrigstad.com/ioopm).

### Dependencies

You'll need to have these installed:

 - VirtualBox 5.1.x ([Download page](https://www.virtualbox.org/wiki/Downloads))
 - vagrant 1.8.x ([Download page](https://www.vagrantup.com/downloads.html))

**WARNING: if you have vagrant or VirtualBox installed already, double check the version numbers!**

Use `vagrant --version` and `VBoxManage --version` to check.
 
### Install

To install, execute:

    cd
    git clone git@github.com:kaeluka/ioopm-vagrant.git
    vagrant plugin install vagrant-vbguest

### Run

Execute these commands to start a virtual machine:

    cd ~/ioopm-vagrant/vagrant
    vagrant up
    vagrant ssh
    
The terminal window now runs in virtual machine ("the guest OS")
that has most of the command line tools you will need in the 
course installed and configured.

The directory `~/ioopm-vagrant/synced_data` on your operating
system (the "host OS") and the directory `~/synced_data` on the
guest OS are synchronised. This means that you can edit the files
with your own editor, and just compile and run them from the terminal
that is executing `vagrant ssh`.

### Upgrade

We will add more tools to the virtual machine, based on the needs of the course.
In this case, you can get the new configurations by running:

    cd ~/ioopm-vagrant
    cp -r synced_data /tmp
    git pull
    mv /tmp/synced_data .

