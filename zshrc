source /opt/homebrew/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh

# exa Aliases
alias ls="exa --icons --classify --group-directories-first --oneline"
alias ll="ls --long --group --header --git"
alias lla="ll --all"
alias tree="ls --tree"
alias treel="ll --tree"
alias treela="lla --tree"

# Conda Initialization can go here

# Use homebrew py311 for `python`
export PATH="$PATH:/opt/homebrew/opt/python@3.11/libexec/bin"

eval "$(starship init zsh)"