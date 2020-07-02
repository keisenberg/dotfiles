#
## Plugin :: fzf :: Functions

# Function modification :: CTRL-T :: Key bindings
# shellcheck disable=SC2016
fzf_ctrl_t_key_bindings() {
        printf 'ctrl-]:toggle-preview,'
        printf 'ctrl-o:execute(code $(izer deiconize {+}))+abort,'
        printf 'ctrl-r:execute-silent(realpath $(izer deiconize {+}) | xargs echo -n | pbcopy),'
        printf 'ctrl-t:execute-silent(pbcopy < $(izer deiconize {+})),'
        printf 'ctrl-v:execute(${EDITOR:-vim} $(izer deiconize {+}) < /dev/tty > /dev/tty)+abort,'
        printf 'ctrl-y:execute-silent(echo $(izer deiconize {+}) | xargs echo -n | pbcopy),'
        printf 'enter:execute(izer deiconize {+})+abort'
}

# Function modification :: _fzf_search_content
# shellcheck disable=SC2016
_fzf_search_content() {
  rg --color always --glob "!.git/" --hidden --line-number --no-heading --smart-case '' | \
      fzf --bind "ctrl-]:toggle-preview,ctrl-o:execute(code {1})+abort,ctrl-v:execute(${EDITOR:-vim} +{2} {1} < /dev/tty > /dev/tty)+abort,enter:execute(printf '{+}' | cut -d ':' -f 1 | tr '\n' ' ' | pbcopy)+abort" \
          --ansi --delimiter=":" --exact \
          --preview-window down:40%:noborder \
          --preview 'bat --highlight-line {2} --line-range $(( $(( $(echo {2}) - $(printf "%.0f\n" $(( $LINES * 0.4 ))) / 2 )) < 1 ? 1 : $(( $(echo {2}) - $(printf "%.0f\n" $(( $LINES * 0.4 ))) / 2 )) )):$(( $(( $(( $(echo {2}) - $(printf "%.0f\n" $(( $LINES * 0.4 ))) / 2 )) < 1 ? 1 : $(( $(echo {2}) - $(printf "%.0f\n" $(( $LINES * 0.4 ))) / 2 )) )) + $(printf "%.0f\n" $(( $LINES * 0.4 ))) - 1 )) --style=changes,numbers,snip --wrap=never {1} 2> /dev/null'
  return 0
}

# vi: filetype=zsh
