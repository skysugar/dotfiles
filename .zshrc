# ---------- 超简洁提示符 ----------
PS1="%F{cyan}%0~%f %F{red}%#%f "

# ---------- 别名 ----------
alias ls='ls --color=auto'
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias grep="grep --color=auto"
alias vi='vim'

# ---------- 编辑器 ----------
export EDITOR="vim"

# ---------- 补全（标准、快速） ----------
autoload -Uz compinit
# 跳过安全检查，显著加快启动速度
compinit -u

# ---------- 常用 bindkey ----------
bindkey -e  # 使用 emacs 键位，修复 ctrl+a、ctrl+e

