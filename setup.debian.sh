#!/bin/bash

sudo apt update ; sudo apt upgrade -y
sudo apt install git ansible

git clone https://gitlab.lemorse.tech/LeMomorse/dotfiles.git ~/dotfiles


ansible-galaxy role install geerlingguy.docker
ansible-galaxy role install geerlingguy.pip

ansible-galaxy collection install community.crypto

echo -e "You need to update your group variables before continue!\t`nano ~/dotfiles/group_vars/all/vars.yml`\n"
echo -e "Then run ansible with: `ansible-playbook -K ~/dotfiles/run.yml`"

# ansible-playbook -K ~/dotfiles/run.yml
