#
## Z shell :: Enable autocompletion

# Action :: Activate completion system
autoload -Uz compinit

# Variable modification :: zsh_compdump_path
zsh_compdump_path="${HOME}/.cache/zsh/.zcompdump-${ZSH_VERSION}"

# Variable modification :: zsh_compdump_timestamp_update
typeset -i zsh_compdump_timestamp_update=$(date +'%j' -r ${zsh_compdump_path} 2>/dev/null || stat -f '%Sm' -t '%j' ${zsh_compdump_path} 2>/dev/null)

# Validation :: Timestamp of zcompdump :: Determine regeneration need of cached .zcompdump to avoid unnecessary Z shell startup delay
if [[ "$(date +'%j')" != "$zsh_compdump_timestamp_update" ]]; then
    #  Action :: Execute compinit
    compinit -i -d "${zsh_compdump_path}"
else
    # Action :: Execute compinit :: Ignore checking of regeneration necessity
    compinit -i -d "${zsh_compdump_path}" -C
fi

# Action :: Load complist module :: A menu list from where we can highlight and select completion results
zmodload -i zsh/complist

# vi: filetype=zsh
