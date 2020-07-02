#
## Z shell :: Load :: Key bindings

# Variable modification :: Z shell :: Key binding :: Include files
zsh_kb_if=($HOME/.zsh_key_bindings.d/*.zshrc) 2> /dev/null

# Validation :: Determine if number of key binding include files exceeds 0
if [ ${#zsh_kb_if[@]} -gt 0 ]; then
    # Action :: Loop over Z shell key binding include files
    foreach zsh_key_binding (`echo ${zsh_kb_if[@]} | sort`)
        # Action :: Include Z shell key binding include files
        source "$zsh_key_binding"
    end
fi

# vi: filetype=zsh
