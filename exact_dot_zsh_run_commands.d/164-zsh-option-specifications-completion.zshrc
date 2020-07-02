#
## Z shell :: Option specifications :: Completion

# Set :: Move cursor to end if word had one match
setopt ALWAYS_TO_END

# Set :: Automatically list choices on ambiguous completion
setopt AUTO_LIST
# Set :: Automatically use menu completion
setopt AUTO_MENU

# Set :: Prevent aliases from being internally substituted before completion is attempted to make the alias a distinct command for completion purposes
setopt COMPLETE_ALIASES

# vi: filetype=zsh
