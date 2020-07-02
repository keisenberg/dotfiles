#
## Z shell :: Environment variables :: fpath

# Variable modification :: fpath / FPATH :: Discard duplicates
typeset -U fpath
# Variable modification :: fpath
fpath=( $HOME/.zsh_functions.d "$fpath[@]" )
# Action :: Export variable :: FPATH
export fpath

# vi: filetype=zsh
