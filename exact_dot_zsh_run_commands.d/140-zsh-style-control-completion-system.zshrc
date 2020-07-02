#
## Z shell :: Style control :: Completion system

# Style :: Completion :: Select completions with arrow keys
zstyle ':completion:*' menu select
# Style :: Completion :: Group completion results by category
zstyle ':completion:*' group-name ''
# Style :: Completion :: Enable approximate matches for completion
zstyle ':completion:::::' completer _expand _complete _ignored _approximate

# vi: filetype=zsh
