{ pkgs, ... }: {
  home.username = "pushpathapa";
  home.homeDirectory = "/Users/pushpathapa";

  imports = [
    ./apps/starship.nix
    ./apps/bat.nix
    ./apps/fzf.nix
    ./apps/tmux.nix
    ./apps/java.nix
    ./apps/vscode.nix
    ./apps/zsh.nix
    ./apps/alacritty.nix
    ./apps/zoxide.nix
    ./apps/thefuck.nix
  ];

  home.packages = with pkgs; [
    nixpkgs-fmt
    nodejs_20
    python3
    lua
    htop
    ripgrep
    tldr
    jq
    eza
    neovim
  ];

  programs.home-manager.enable = true;

  home.stateVersion = "24.05";
}
