# dotfiles

![logo](logo.png)

## Sources

See the [sources.md](sources.md) file.

## Usage

### Install the ansible dependencies

```bash
ansible-galaxy role install -r requirements.yml
```

### Run ansible

Check the [inventory file](hosts.ini) before running.

```bash
ansible-playbook run.yml -K
```

## Manual configuration

There some things to configure manually after the installation.

- the slack nord theme: [follow this guide](https://www.nordtheme.com/ports/slack)
- if the discord nord theme isn't applied:
    1. run discord for the first time
    2. run the command `betterdiscordctl install`
    3. restart discord
- the polybar's modules configuration: [follow this guide](https://github.com/Artmorse/polybar-nord/blob/master/modules-configuration.md)