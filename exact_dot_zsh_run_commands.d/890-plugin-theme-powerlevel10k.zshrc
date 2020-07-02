#
## Plugin :: Theme :: Powerlevel10k

# Validation :: File existence :: ~/.p10k.zsh
if [[ -f "$HOME/.p10k.zsh" ]]; then
    # Source :: Environment initialization
    # shellcheck disable=SC1090
    source "$HOME/.p10k.zsh"
fi

# vi: filetype=zsh
