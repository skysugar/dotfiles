#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

#PS1='\e[35;1m\W \e[31;1m>\e[32;1m>\e[33;1m>\e[0m '

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
