#!/bin/bash

sudo easy_install pip
sudo pip install ansible

ansible-galaxy install geerlingguy.homebrew
ansible-playbook -K main.yml 

lpass login jtmorton@calpoly.edu
ansible-playbook lpass.yml

echo "Manual steps:"
echo "- Login to chrome for bookmarks and to download extensions"
echo "- Run docker once to do first time activation"
echo "- Install VPN"
echo "- Uninstall unwanted software"
