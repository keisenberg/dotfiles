#
## Z shell :: Load :: Environment variables

# Variable modification :: Z shell :: Environment variable :: Include files
zsh_ev_if=($HOME/.zsh_environment_variables.d/*.zshrc) 2> /dev/null

# Validation :: Determine if number of environment variable include files exceeds 0
if [ ${#zsh_ev_if[@]} -gt 0 ]; then
    # Action :: Loop over Z shell environment variable include files
    foreach zsh_environment_variable (`echo ${zsh_ev_if[@]} | sort`)
        # Action :: Include Z shell environment variable include files
        source "$zsh_environment_variable"
    end
fi

# vi: filetype=zsh
