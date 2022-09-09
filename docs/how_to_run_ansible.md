# How to run ansible ?

## Usage

### Install all!

```bash
ansible-playbook run.yml -K
```

### Install only..

#### ... *feh*.

```bash
ansible-playbook run.yml -K --tags=wallpapers,feh
```

#### ... *polybar*.

```bash
ansible-playbook run.yml -K --tags=bars,polybar
```

#### ... *zsh* with *aliases*.

```bash
ansible-playbook run.yml -K --tags=shell,zsh,alias
```

#### ... *arandr*.

```bash
ansible-playbook run.yml -K --tags=screenlayout,arandr
```

#### ... *dev* softwares.

```bash
ansible-playbook run.yml -K --tags=gui,dev
```

#### ... *kubectl*.

```bash
ansible-playbook run.yml -K --tags=cli,kubectl
```