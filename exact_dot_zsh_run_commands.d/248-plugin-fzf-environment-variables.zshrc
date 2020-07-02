#
## Plugin :: fzf :: Environment variables

# Variable modification :: FZF_DEFAULT_OPTS
export FZF_DEFAULT_OPTS="--color=bg+:#073642,bg:#002b36,spinner:#719e07,hl:#586e75 --color=fg:#839496,header:#586e75,info:#cb4b16,pointer:#719e07 --color=marker:#719e07,fg+:#839496,prompt:#719e07,hl+:#719e07"

# Variable modification :: FZF_CTRL_T_COMMAND
export FZF_CTRL_T_COMMAND='fd --exclude '.git' --hidden --no-ignore-vcs --type f | izer iconize -f=nerd -c'
# Variable modification :: FZF_CTRL_T_OPTS
# shellcheck disable=SC2155
export FZF_CTRL_T_OPTS="--ansi --exact --exit-0 --inline-info --layout=default --multi --no-height --select-1 --bind '$(fzf_ctrl_t_key_bindings)' --preview-window down:40%:noborder --preview 'izer deiconize {} | xargs bat --line-range :150 --style=changes,numbers,snip --wrap=never 2> /dev/null'"

# Variable modification :: FZF_CTRL_R_OPTS
export FZF_CTRL_R_OPTS='--ansi --exact --exit-0 --inline-info --layout=default --multi --no-height --select-1'

# Variable modification :: FZF_ALT_C_COMMAND
export FZF_ALT_C_COMMAND='fd --exclude '.git' --hidden --no-ignore-vcs --type d'
# Variable modification :: FZF_ALT_C_OPTS
export FZF_ALT_C_OPTS="--ansi --exact --exit-0 --inline-info --layout=default --multi --no-height --select-1 --preview-window=down:40%:noborder --preview 'exa --color=always --color-scale --group --git --icons --long --tree {} | head -150'"

# Variable modification :: FZF_COMPLETION_TRIGGER
export FZF_COMPLETION_TRIGGER=',,'
# Variable modification :: FZF_COMPLETION_OPTS
export FZF_COMPLETION_OPTS='--ansi --exact --exit-0 --inline-info --layout=default --multi --no-height --select-1'

# vi: filetype=zsh
