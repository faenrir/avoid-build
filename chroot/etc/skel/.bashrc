# .bashrc

. ~/.bash_profile

export PATH="/home/fabian/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='\W \$ '

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/fabian/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/fabian/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/fabian/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/fabian/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

#!/bin/sh
if [ "$TERM" = "linux" ]; then
  /bin/echo -e "
  \e]P0403c58
  \e]P1ea6f91
  \e]P29bced7
  \e]P3f1ca93
  \e]P434738e
  \e]P5c3a5e6
  \e]P6eabbb9
  \e]P7faebd7
  \e]P86f6e85
  \e]P9ea6f91
  \e]PA9bced7
  \e]PBf1ca93
  \e]PC34738e
  \e]PDc3a5e6
  \e]PEeabbb9
  \e]PFffffff
  "
  # get rid of artifacts
  clear
fi
