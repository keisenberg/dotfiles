#
## Plugin :: ZSH autosuggest

# Variable modification :: ZSH autosuggest :: Disable suggestion for large buffers
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20

# Variable modification :: ZSH autosuggest :: Suggestion highlight style
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#008000"

# Variable modification :: ZSH autosuggest :: Manual rebind // Disable very slow obscure feature
ZSH_AUTOSUGGEST_MANUAL_REBIND=1

# Variable modification :: ZSH autosuggest :: Completion
ZSH_AUTOSUGGEST_STRATEGY=(history match_prev_cmd completion)

# Variable modification :: ZSH autosuggest :: Enable asynchronous mode
ZSH_AUTOSUGGEST_USE_ASYNC=true

# Variable modification :: ZSH autosuggest :: Prevent offering suggestions for history entries that match the pattern :: Affects history / match_prev_cmd
ZSH_AUTOSUGGEST_HISTORY_IGNORE="(nc *|netcat *|ping *|prettyping *|ssh *|traceroute *)"

# vi: filetype=zsh
