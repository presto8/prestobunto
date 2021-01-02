# prestobuntu

A script to customize Ubuntu to my preferences. Essential services (like sshd)
are installed and annoyances (like update manager popups) are disabled.

## Installation

The installation script is auto-updating and has many safety checks. Of course,
you should inspect and verify it before running (as one should do before
running any arbitrary shell script from the Internet).

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
- Remote access
  - openssh-server, with pre-install SSH key
  - vncserver
- Filesystem
  - Remove empty directories from /home/user
- Install packages
  - screen, git, exuberant-ctags, fd
- Vim
  - Plugins: vim-sensible, vim-fugitive, vim-commentary, vim-unimpaired,
    supertab, ale, lightline, fzf, vim-gitgutter, vim-foldsearch, vim-ripgrep
- Disable packages
  - cups, whoopsie, avahi.daemon, apt-daily, automatic updates
- Shell
  - zsh with liquidprompt
- Vim
  - Fully featured vim environment with many plugins
- Network
  - Hard-code DNS to 1.1.1.1
