#
## Plugin :: Shell plugin manager :: antibody

# Action :: Initialize antibody :: Dynamic load
source <(antibody init)

# Action :: Bundle plugin(s) :: Dynamically
antibody bundle < ~/.zsh_plugins.txt

# vi: filetype=zsh
