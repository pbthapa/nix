export LANG=en_US.UTF-8

#
# Lazyvim aliases
#
alias lv="NVIM_APPNAME=lazyvim nvim"

#
# Tmux aliases
#
alias t="tmux -u"
alias tk="tmux kill-server"

#
# Eza aliases
#
alias ls="eza --color=always --long --git --no-filesize --icons=always --no-time --no-user --no-permissions"
alias ll="eza --color=always --long --git --no-filesize --icons=always"

file_or_dir_preview="if [ -d {} ]; then eza --tree --color=always {} | head -200; else bat -n --color=always --line-range :500 {}; fi"

#
# Overriding fzf function to preview using bat when **<TAB> is used.
#
_fzf_comprun () {
  local command $1
  shift

  case "$command" in
    cd)            fzf --preview 'eza --tree --color=always {} | head -200'   "$@" ;;
    export|unset)  fzf --preview "eval 'echo \${}'"                           "$@" ;;
    *)             fzf --preview "$file_or_dir_preview"                       "$@" ;;
  esac
}
