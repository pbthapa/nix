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

export PYENV_ROOT="$HOME/.pyenv"

[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"

eval "$(pyenv init -)"

function gitpush {
  if [[ -z "$1" ]]; then
      echo "Error: Commit message is missing!"
      echo "Usage: gp \"Your commit message\""
      return 1
  fi

  git add . && git commit -m "$1" && git push
}

# Google CLI path
export GOOGLE_CLOUD_SDK_ROOT="/Users/pushpathapa/Documents/google-cloud-sdk"

[[ -d $GOOGLE_CLOUD_SDK_ROOT/bin ]] && export PATH="$GOOGLE_CLOUD_SDK_ROOT/bin:$PATH"

# Nix
if [ -e '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh' ]; then
  . '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh'
fi
# End Nix
