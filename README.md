# dotfiles

![logo](logo.png)

## Sources

See the [sources.md](sources.md) file.

## OS tested

- [x] [Manjaro-XFCE Minimal 21.2.6](https://manjaro.org/downloads/official/xfce/)
- [x] [Manjaro-XFCE Minimal 21.3.7](https://manjaro.org/downloads/official/xfce/)

## Steps

### Backup your current machine

The `BACKUP_DEVICE_PATH` is the path to the root of your connected device (external hard drive ; for example: `/run/media/arthurc/backup`).

- create the backup folder on the external device
  ```bash
  export BACKUP_DEVICE_PATH="/run/media/arthurc/backup"
  export BACKUP_FOLDER_PATH=${BACKUP_DEVICE_PATH}/lartop-xps/$(date +"%Y-%m-%d")
  mkdir -p $BACKUP_FOLDER_PATH
  ```
- clean your git repositories
  1. clone the [git-cleaner repository](https://gitlab.lemorse.tech/LeMomorse/git-cleaner) in your *~/Documents/workspace-perso* folder
    ```bash
    cdwper
    git clone ssh://git@gitlab.lemorse.tech:2223/LeMomorse/git-cleaner.git
    ```
  2. remove the up to date repositories
    ```bash
    bash git_cleaner.sh "~/Documents"
    ```
  3. then do what is necessary for the others
- backup your `history`
  ```bash
  history > $BACKUP_FOLDER_PATH/history.txt
  ```
- backup your home directories
  ```bash
  for folder in Documents Downloads Pictures ; cp -r ~/${folder} "${BACKUP_FOLDER_PATH}"
  ```
- backup the dotfiles
  ```bash
  cp -r ~/.config "${BACKUP_FOLDER_PATH}"
  ```
- backup your SSH keys and GPG keys
  ```bash
  cp -r ~/.ssh "${BACKUP_FOLDER_PATH}"
  ```
  Follow this [documentation](https://gitlab.lemorse.tech/LeMomorse/help/-/blob/master/gpg/README.md#backup) to know how to backup/restore GPG keys.

### Install a fresh OS

Check the [OS tested list](#os-tested).

### Pre installation

1. Configure the [group_vars.yml](https://gitlab.lemorse.tech/LeMomorse/dotfiles-manjaro/-/blob/master/group_vars/all/vars.yml) file.
2. Run the script to run the local installation ans follow the instructions.
  ```bash
  bash ./setup.sh
  ```

### Installation

```bash
ansible-playbook run.yml -K
```

For more information, check [How to run ansible documentation](docs/how_to_run_ansible.md).

### Post installation

There some things to configure manually after the installation.

- sign in into firefox
- the slack nord theme: [follow this guide](https://www.nordtheme.com/ports/slack)
- sign in into mailspring
- configure discord:
    1. run discord for the first time
    2. run the command `betterdiscordctl install`
    3. restart discord
- configure spotify:
    1. run spotify for the first time
    2. run the command `spicetify backup apply`
    3. restart spotify
- configure the printer at [localhost:631/admin](http://localhost:631/admin)
- install [IntelliJ IDEA Community Edition](https://www.jetbrains.com/fr-fr/idea/) with [JetBrains Toolbox](https://www.jetbrains.com/fr-fr/lp/toolbox/).
  - configure the IDE settings: *File* > *Manage IDE Settings* > *Settings repository ...* and follow the instructions
  - configure the thunar shortcuts (right click then *Send To* > *Side Pane (Create Shortcut)*)
  - configure the Wanhao France D12 profiles on Cura:
    1. run cura for the first time
    2. run the command `ansible-playbook run.yml -K --tags=gui,cura`
    3. restart cura
