#
## Z shell :: Load :: Aliases

# Variable modification :: Z shell :: Alias :: Include files
zsh_alias_if=($HOME/.zsh_aliases.d/*.zshrc) 2> /dev/null

# Validation :: Determine if number of alias include files exceeds 0
if [ ${#zsh_alias_if[@]} -gt 0 ]; then
    # Action :: Loop over Z shell alias include files
    foreach zsh_alias (`echo ${zsh_alias_if[@]} | sort`)
        # Action :: Include Z shell alias include files
        source "$zsh_alias"
    end
fi

# vi: filetype=zsh
