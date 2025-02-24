if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Environment Variables
export HOMEBREW_API_DOMAIN="https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles/api"
export HOMEBREW_BOTTLE_DOMAIN="https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles"
export HOMEBREW_BREW_GIT_REMOTE="https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/brew.git"
export HOMEBREW_CORE_GIT_REMOTE="https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/homebrew-core.git"
export HOMEBREW_PIP_INDEX_URL="https://pypi.tuna.tsinghua.edu.cn/simple"

# Setup
ulimit -n 82920
eval "$(/opt/homebrew/bin/brew shellenv)"
starship init fish | source
thefuck --alias | source

# Alias
if type -q lsd
    alias ll "lsd -l -g"
    alias lla "ll -a"
end

if type -q git
    alias g git
end

if type -q brew
    alias brewx "brew update && brew upgrade --greedy ; brew cleanup --prune=all ; brew autoremove"
end

if type -q nvim
    alias vim nvim
end

if type -q cursor
    alias code cursor
end
