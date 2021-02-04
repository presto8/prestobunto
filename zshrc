export VISUAL=vim
export EDITOR=$VISUAL
export LS_COLORS="ln=4:di=1;36"  # underline links, dirs bright blue
export TERM=xterm-256color

setopt autocd

autoload -U colors && colors
autoload -U zmv

test -f ~/.liquidprompt && source "$_"

if which fasd &>/dev/null; then
    eval "$(fasd --init auto)"
    alias v='f -e vim'
fi

# Tab Completions
autoload -U compinit && compinit -C
zstyle ':completion:*' menu select=long-list select=1
zstyle ':completion:*:*:*:default' menu yes select search  # show a menu with incremental search if ambiguous
setopt menucomplete  # automatically select the first matching entry
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'  # ignore case and partial-word matching
zstyle ':completion:*:descriptions' format "%B-- %d --%b"  # helpful formatting messages
zstyle ':completion:*:messages' format "%B-- %d --%b"
zstyle ':completion:*:warnings' format "%B-- no match for: %d --%b"

# Case-insensitive globbing
setopt extendedglob
unsetopt caseglob

# History options
bindkey -e  # emacs command line editing mode
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt append_history extended_history incappendhistory
setopt hist_ignore_dups sharehistory hist_ignore_space

# Disable Ctrl+S/Ctrl+Q
setopt no_flow_control

# Display statistics for commands that take user+sys longer than this time
REPORTTIME=10

# may need the following if delete key doesn't work
bindkey "\e[3~" delete-char

# Aliases
alias ls='ls --color'
alias l='ls -l'
psg() { pgrep -f "$@" | xargs --no-run-if-empty ps -f -p}
alias rg='rg -i'
alias j='journalctl --no-hostname --follow'
alias jk='journalctl -k --no-hostname --follow'
alias setproj='echo $PWD >$XDG_RUNTIME_DIR/current_project'
alias gp='cd $(cat $XDG_RUNTIME_DIR/current_project)'
alias scr='screen -dR'
