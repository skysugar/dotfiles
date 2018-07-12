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

alias ssh_99_lobby-172.31.242.213='ssh -At root@47.52.201.99 -p 19780 "ssh root@172.31.242.213 -p 46578"'
alias ssh_99_land-172.31.242.214='ssh -At root@47.52.201.99 -p 19780 "ssh root@172.31.242.214 -p 46578"'
alias ssh_99_other-172.31.242.191='ssh -At root@47.52.201.99 -p 19780 "ssh root@172.31.242.191 -p 46578"'
alias ssh_99_testserver-120.24.54.6='ssh -At root@47.52.201.99 -p 19780 "ssh root@120.24.54.6 -p 22"'
