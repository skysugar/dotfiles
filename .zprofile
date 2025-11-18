# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# Go 工具链
export GOPATH="$HOME/.go"
export PATH="$PATH:$GOPATH/bin"

# Kubernetes krew
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

# GNU 工具链
export PATH="/opt/homebrew/opt/gnu-sed/libexec/gnubin:$PATH"
export PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"
export PATH="/opt/homebrew/opt/findutils/libexec/gnubin:$PATH"
export PATH="/opt/homebrew/opt/gawk/libexec/gnubin:$PATH"
export PATH="/opt/homebrew/opt/grep/libexec/gnubin:$PATH"
export PATH="/opt/homebrew/opt/gnu-tar/libexec/gnubin:$PATH"
export PATH="/opt/homebrew/opt/make/libexec/gnubin:$PATH"
export PATH="/opt/homebrew/opt/gnu-time/libexec/gnubin:$PATH"

# 防止 Homebrew 自己更新造成卡顿
export HOMEBREW_NO_AUTO_UPDATE=1
