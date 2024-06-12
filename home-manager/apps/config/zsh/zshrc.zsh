export LANG=en_US.UTF-8

PROJECTS_DIR="$HOME/Documents/projects"

alias lh="cd $PROJECTS_DIR/nix/lazyvim"
alias lv="NVIM_APPNAME=lazyvim nvim ."
alias h='cd $HOME'
alias p='cd $PROJECTS_DIR'
alias np='cd $PROJECTS_DIR/nix'
alias hm='cd $PROJECTS_DIR/nix/home-manager'
alias t='tmux -u'
alias tk='tmux kill-server'

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
