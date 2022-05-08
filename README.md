# dotfiles

![logo](logo.png)

## Sources

See the [sources.md](sources.md) file.

## OS tested

- [x] [Xubuntu 21.04](https://xubuntu.org/news/xubuntu-21-04-released/)
- [x] [Xubuntu 21.10](https://xubuntu.org/news/xubuntu-21-10-released/)
- [x] [Xubuntu 22.04](https://xubuntu.org/news/xubuntu-22-04-released/)
- [x] [Ubuntu 22.04](https://ubuntu.com/blog/ubuntu-22-04-lts-released)

## Usage

### Install the ansible dependencies

```bash
ansible-galaxy role install -r requirements.yml

ansible-galaxy collection install community.crypto
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
- if the discord nord theme isn't applied:
    1. run discord for the first time
    2. run the command `betterdiscordctl install`
    3. restart discord
- the polybar's modules configuration: [follow this guide](https://github.com/Artmorse/polybar-nord/blob/master/modules-configuration.md)
- check the i3 monitor configuration
    1. list your monitors
        ```bash
        xrandr --listmonitors
        ```
    2. edit the i3 configuration file ([~/.config/i3/config](~/.config/i3/config))
        ```config
        set $monitor_top YOUR_TOP_MONITOR
        set $monitor_bottom YOUR_BOTTOM_MONITOR
        ```
- configure your printer

## Roadmap :motorway:

- [ ] : variabilize monitor values (like `eDP-1`, `HDMI-1`, `DP-3` ...)
- [ ] : create dependencies between roles
- [ ] : create documentation to explain the printer configuration