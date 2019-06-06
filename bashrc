source ~/.git-completion.bash

yellow="\[\033[0;33m\]"
yellowbold="\[\033[1;33m\]"
cyan="\[\033[0;36m\]"
red="\[\033[0;31m\]"
white="\[\033[0;97m\]"
redbold="\[\033[1;91m\]"
greenbold="\[\033[1;92m\]"
green="\[\033[0;32m\]"
whitebold="\[\033[1;97m\]"
bluebold="\[\033[1;96m\]"
reset="\[\033[0m\]"

if [[ "$OSTYPE" == "darwin"* ]]; then
   alias ls='ls -G'
else
   alias ls='ls --color=auto'
fi
alias l="ls"
alias tmux="tmux -2"
alias config="bash ~/.dotfiles/update_dotfiles.sh"
alias plug="bash ~/.update_plugin.sh"

export VISUAL=vim
export EDITOR="$VISUAL"

export TERM=screen-256color

source ~/.git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
export PS1="$red\u$yellow\$(__git_ps1) $reset$cyan\w$reset » "
# SERVER PS1
# export PS1="$whitebold[$redbold\u$yellowbold@$bluebold\h$whitebold $greenbold\w$yellowbold\$(__git_ps1)$whitebold]$ $reset"

# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH
