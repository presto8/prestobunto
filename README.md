# prestobuntu

A script to customize Ubuntu to my preferences.

- Boot
  - Text instead of graphics
- System
  - Allow sudo without password
  - Make system journal persistent across reboots
  - Focus follows mouse
  - Remap CapsLock to Ctrl
  - Hard-code DNS to 1.1.1.1
  - Disable cups, whoopsie, avahi.daemon, apt-daily, automatic updates
- Remote access
  - openssh-server, with pre-install authorized keys
  - vncserver
- Filesystem
  - Remove empty directories from /home/user
- Install packages
  - screen, git, exuberant-ctags, fd
- Vim
  - Plugins: vim-sensible, vim-fugitive, vim-commentary, vim-unimpaired,
    supertab, ale, lightline, fzf, vim-gitgutter, vim-foldsearch, vim-ripgrep
- Shell
  - zsh with liquidprompt

## Installation

The installation script is auto-updating and has many safety checks. Of course,
you should inspect and verify it before running (as one should do before
running any arbitrary shell script from the Internet).

### Installation from local file

    sudo ./setup

### Installation from Internet

    wget https://raw.githubusercontent.com/presto8/prestobuntu/master/setup
    sudo ./setup
