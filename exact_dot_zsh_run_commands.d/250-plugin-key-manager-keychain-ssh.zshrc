#
## Plugin :: Key manager :: Keychain :: SSH

# Variable modification :: Keychain :: SSH :: Path :: Agent socket
keychain_ssh_path_as="${HOME}/.cache/ssh/S.ssh-agent"

# Variable modification :: Keychain :: SSH :: Agent :: Run state
keychain_ssh_agent_rs="$(pgrep -q -x 'ssh-agent' ; echo $?)"

# Conditional :: Agent socket -> Is socket && ssh-agent -> Run state
if [[ -S "$keychain_ssh_path_as" && "$keychain_ssh_agent_rs" == '0' ]]; then
    # Source :: Environment initialization
    # shellcheck disable=SC1090
    source "${HOME}/.keychain/${HOSTNAME}-sh"
elif [[ -S "$keychain_ssh_path_as" && "$keychain_ssh_agent_rs" == '1' ]]; then
    # File modification :: $keychain_ssh_path_as
    rm -f "$keychain_ssh_path_as" 2> /dev/null

    # Action :: Initialize :: Environment
    # shellcheck disable=SC2086
    eval "$(keychain --agents ssh --agent-socket $keychain_ssh_path_as --eval --noask --nogui --quick --quiet)"
elif [[ ! -S "$keychain_ssh_path_as" && "$keychain_ssh_agent_rs" == '0' ]]; then
    # Process modification :: ssh-agent
    pkill -x 'ssh-agent' 2> /dev/null

    # Action :: Initialize :: Environment
    # shellcheck disable=SC2086
    eval "$(keychain --agents ssh --agent-socket $keychain_ssh_path_as --eval --noask --nogui --quick --quiet)"
else
    # Action :: Initialize :: Environment
    # shellcheck disable=SC2086
    eval "$(keychain --agents ssh --agent-socket $keychain_ssh_path_as --eval --noask --nogui --quick --quiet)"
fi

# vi: filetype=zsh
