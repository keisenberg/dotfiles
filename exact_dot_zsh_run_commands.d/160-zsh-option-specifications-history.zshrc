#
## Z shell :: Option specifications :: History

# Set :: Append history list to the history file rather than replacing it
setopt APPEND_HISTORY
# Set :: Save beginning timestamp for each command (in seconds since the epoch) and the duration (in seconds) to the history file
setopt EXTENDED_HISTORY

# Set :: When searching for history entries in the line editor, do not display duplicates of a line previously found, even if the duplicates are not contiguous
setopt HIST_FIND_NO_DUPS
# Set :: Do not enter command lines into the history list if they are duplicates of the previous event.
setopt HIST_IGNORE_DUPS
# Set :: Remove command lines from the history list when the first character on the line is a space, or when one of the expanded aliases contains a leading space
setopt HIST_IGNORE_SPACE
# Set :: Remove function definitions from the history list
setopt HIST_NO_FUNCTIONS
# Set :: Remove superfluous blanks from each command line being added to the history list
setopt HIST_REDUCE_BLANKS

# Set :: Imports new commands from the history file, and also causes your typed commands to be appended to the history file, history lines are also output with timestamps
setopt SHARE_HISTORY

# Set :: Do not query the user before executing ‘rm *’ or ‘rm path/*’
setopt RM_STAR_SILENT

# vi: filetype=zsh
