# dotfiles

![logo](logo.png)

## Sources

See the [sources.md](sources.md) file.

## OS tested

- [x] [Manjaro-XFCE Minimal 21.2.6](https://manjaro.org/downloads/official/xfce/)

## Usage

### Install the ansible dependencies

```bash
ansible-galaxy role install geerlingguy.docker
ansible-galaxy role install geerlingguy.pip

ansible-galaxy collection install community.crypto
ansible-galaxy collection install kewlfft.aur
```

## Local installation

1. Configure the [group_vars.yml](https://gitlab.lemorse.tech/LeMomorse/dotfiles-manjaro/-/blob/master/group_vars/all/vars.yml) file.
2. Run the script to run the local installation.
```bash
bash ./setup.sh
```

### Run ansible

Check the [inventory file](hosts.ini) before running.

```bash
ansible-playbook run.yml -K
```

#### Install only..

##### ... *feh*.

```bash
ansible-playbook run.yml -K --tags=wallpapers,feh
```

##### ... *polybar*.

```bash
ansible-playbook run.yml -K --tags=bars,polybar
```

##### ... *zsh* with *aliases*.

```bash
ansible-playbook run.yml -K --tags=shell,zsh,alias
```

##### ... *arandr*.

```bash
ansible-playbook run.yml -K --tags=screenlayout,arandr
```

##### ... *dev* softwares.

```bash
ansible-playbook run.yml -K --tags=gui,dev
```

##### ... *kubectl*.

```bash
ansible-playbook run.yml -K --tags=cli,kubectl
```

## Manual configuration

There some things to configure manually after the installation.

- the slack nord theme: [follow this guide](https://www.nordtheme.com/ports/slack)
- configure discord:
    1. run discord for the first time
    2. run the command `betterdiscordctl install`
    3. restart discord
- configure spotify:
    1. run spotify for the first time
    2. run the command `spicetify backup apply`
    3. restart spotify
- sign in into firefox
