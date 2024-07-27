{ ... }:
let
  programs = [
    ./apps/starship.nix
    ./apps/bat.nix
    ./apps/fzf.nix
    ./apps/tmux.nix
    ./apps/java.nix
    ./apps/vscode.nix
    ./apps/zsh.nix
    ./apps/bash.nix
    ./apps/alacritty.nix
    ./apps/kitty.nix
    ./apps/zoxide.nix
    ./apps/thefuck.nix
  ];
in
programs
