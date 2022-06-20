#!/bin/bash

sudo pacman -Syu
sudo pacman -Sy git ansible

git clone https://gitlab.lemorse.tech/LeMomorse/dotfiles-manjaro.git ~/dotfiles-manjaro


ansible-galaxy role install geerlingguy.docker
ansible-galaxy role install geerlingguy.pip

ansible-galaxy collection install community.crypto
ansible-galaxy collection install kewlfft.aur

ansible-playbook -K run.yml
