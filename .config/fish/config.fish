if status is-interactive
    # Commands to run in interactive sessions can go here
end

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
    alias brewx "brew update && brew upgrade --greedy ; brew cleanup --prune=all"
end
