#
## Plugin :: fzf-tab

# Variable modification :: extract
local extract="
# trim input(what you select)
local in=\${\${\"\$(<{f})\"%\$'\0'*}#*\$'\0'}
# get ctxt for current completion(some thing before or after the current word)
local -A ctxt=(\"\${(@ps:\2:)CTXT}\")
# real path
local realpath=\${ctxt[IPREFIX]}\${ctxt[hpre]}\$in
realpath=\${(Qe)~realpath}
"

# Variable modification :: FZF_TAB_COMMAND
FZF_TAB_COMMAND=(
    fzf --ansi --bind=tab:down,btab:up,change:top,ctrl-space:toggle --color='hl:$(( $#headers == 0 ? 108 : 255 ))' --cycle \
    --delimiter='\x00' --exact --exit-0 --expect='$continuous_trigger' --header-lines='$#headers' --inline-info \
    --layout=default --multi --no-height --nth=2,3 --query='$query' --select-1 --tiebreak=begin
)

# Style :: fzf-tab :: Use $FZF_TAB_COMMAND as command
zstyle ':fzf-tab:*' command $FZF_TAB_COMMAND

# Style :: fzf-tab :: complete :: cd :: Enable extra options used during completion
zstyle ':fzf-tab:complete:cd:*' extra-opts --preview-window=down:30% --preview $extract'exa --color=always --color-scale --group --git --icons --long --tree $realpath'

# Style :: fzf-tab :: complete :: man :: Enable extra options used during completion
zstyle ':fzf-tab:complete:man:*' extra-opts --preview-window right:80%:noborder --preview $extract'man $realpath'

# vi: filetype=zsh
