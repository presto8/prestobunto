# prestobuntu
Customized Ubuntu to my preferences

## Installation

The installation script is auto-updating and has many safety checks.

### Installation from local file

    sudo ./setup

### Installation from Internet

    curl https://raw.githubusercontent.com/presto8/prestobuntu/master/setup | sudo bash -x

## Steps

- Boot
  - Text instead of graphics
- System
  - Allow sudo without password
  - Make system journal persistent across reboots
  - Focus follows mouse
  - Remap CapsLock to Ctrl
- Filesystem
  - Remove empty directories from /home/user
- Install packages
  - openssh-server, screen, vncserver, vim, git, exuberant-ctags
- Disable packages
  - cups, whoopsie, avahi.daemon, apt-daily
- Shell
  - zsh
- Vim
  - Fully featured vim environment with many plugins
