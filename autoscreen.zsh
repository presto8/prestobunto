# Auto start if this is a remote session
#

if [[ -z "$STY" && -z "$EMACS" && -z "$VIM" && -n "$SSH_TTY" ]]; then
  # screen options:
  # -a: include all capabilities in each window's termcap
  # -A: Adapt the sizes of all windows to the size of the current terminal.
  # -U: Run screen in UTF-8 mode.
  # -x: Attach to a not detached screen session. (Multi display mode).
  # -m: always create a new screen session, even if calling screen from within screen
  # -l: turns login mode on
  if screen -aAUxm -S prezto -l -R; then
    # Don't "exec screen" but check the return code. Exit if screen turns
    # without an error. If screen does not return exit code 0, then drop into
    # the shell and let the user deal with it.
    exit
  fi
fi
