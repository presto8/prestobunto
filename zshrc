export VISUAL=vim
export EDITOR=$VISUAL
export LS_COLORS="ln=4:di=1;36"  # underline links, dirs bright blue
export TERM=xterm-256color

setopt autocd

autoload -U colors && colors

test -f ~/.liquidprompt && source "$_"

# Completions
setopt correct correctall

zstyle ':completion:*' menu select=long-list select=1

autoload -U compinit && compinit -C
autoload -U zmv

# Case-insensitive (all),partial-word and then substring completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

# Formatting and messages
# zstyle ':completion:*' verbose 'yes'
# zstyle ':completion:*:descriptions' format "%B-- %d --%b"
# zstyle ':completion:*:messages' format "%B--${green} %d ${nocolor}--%b"
# zstyle ':completion:*:warnings' format "%B--${red} no match for: %d ${nocolor}--%b"
# zstyle ':completion:*:corrections' format "%B--${yellow} %d ${nocolor}-- (errors %e)%b"
# zstyle ':completion:*' group-name ''

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
alias j='journalctl -f'
alias jk='journalctl -k -f'
alias setproj='echo $PWD >$XDG_RUNTIME_DIR/current_project'
alias gp='cd $(cat $XDG_RUNTIME_DIR/current_project)'
alias scr='screen -dR'
