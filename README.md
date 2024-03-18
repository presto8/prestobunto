# prestobuntu

A script to customize Ubuntu to my preferences. It is intended to be
idempotent, so it's safe to run it multiple times; it will only apply the
changes once.

- Boot
  - Text instead of graphics
- System
  - Allow sudo without password
  - Make system journal persistent across reboots
  - Focus follows mouse
  - Remap CapsLock to Ctrl
  - Hard-code DNS to 1.1.1.1
  - Disable cups, whoopsie, apt-daily, automatic updates
  - Remove snaps
  - Replace snap version of Firefox with apt version
  - Install X in addition to Wayland
- Remote access
  - openssh-server, with pre-install authorized keys
  - VNC server (x11vnc)
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

    sudo bash setup

### Installation from Internet

    wget https://raw.githubusercontent.com/presto8/prestobuntu/master/setup
    sudo bash setup
