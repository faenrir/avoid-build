#!/usr/bin/env bash
# File reads on login

#export PATH=~/bin:~/.local/bin:~/.yarn/bin:~/.npm-global/bin:~/.dotnet/tools:$PATH

# Tumbler cache
export XDG_CACHE_HOME=$HOME/.my_new_cache

# Export own scripts to $PATH
export PATH="$PATH:$(du "$HOME/.local/bin/" | cut -f2 | tr '\n' ':')"

# ruby gems
export GEM_HOME="$HOME/.gems"
PATH=$PATH:$HOME/.gem/bin

unset GTK_IM_MODULE

# Session Type
export XDG_SESSION_TYPE="X11"

# Some Default Variables
export BROWSER="firefox"
export EDITOR="vim"
export FILE="Thunar"
export READER="evince"
# export VIMINIT="source $HOME/.config/vim/vimrc"
export TERMINAL="kitty"

# Less more friendly
export LESS='-R -F -g -i -J -M -W -x2'
export LESS_TERMCAP_mb=$'\E[1;31m'     # begin bold
export LESS_TERMCAP_md=$'\E[1;36m'     # begin blink
export LESS_TERMCAP_me=$'\E[0m'        # reset bold/blink
export LESS_TERMCAP_so=$'\E[01;44;33m' # begin reverse video
export LESS_TERMCAP_se=$'\E[0m'        # reset reverse video
export LESS_TERMCAP_us=$'\E[1;32m'     # begin underline
export LESS_TERMCAP_ue=$'\E[0m'        # reset underline
export LESSHISTFILE=/dev/null

# add fun stuff here
alias icat="kitty +kitten icat"
alias ls="ls --color=auto"
alias cava="cava | lolcat"
PS1='[\u@\h \W]\$ '

# Launch menu
if [ -z "$DISPLAY" ] && [ -z "$SSH_CLIENT" ] && [ -z "$TMUX" ] && [[ "$(tty)" == "/dev/tty1" ]] && ! pgrep X > /dev/null; then
	exec startx "$HOME/.config/X11/xinitrc-samu"
fi
