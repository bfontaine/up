function _up_autocomplete {
  subcmds=$(up --list | cut -d: -f1)
  COMPREPLY=()
  if [ $COMP_CWORD = 1 ]; then
    COMPREPLY=(`compgen -W "$subcmds" -- $2`)
  fi
}

complete -F _up_autocomplete up
