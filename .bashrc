#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

#PS1='\e[35;1m\W \e[31;1m>\e[32;1m>\e[33;1m>\e[0m '

HISTSIZE=5000
HISTFILESIZE=2000


cl()
{
if [ -d $1 ]; then
cd $1
ls
else
echo "bash: cl: $1: Directory not found"
fi
}

complete -cf sudo
complete -cf man

#export PYENV_ROOT="$HOME/.pyenv"
#export PATH="$PYENV_ROOT/bin:$PATH"
#eval "$(pyenv init -)"
#eval "$(pyenv virtualenv-init -)"

powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /usr/share/powerline/bindings/bash/powerline.sh
export http_proxy=''
export https_proxy=''
export ftp_proxy=''
export socks_proxy=''
