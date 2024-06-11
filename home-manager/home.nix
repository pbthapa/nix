{ pkgs, ... }: {
  home.username = "pushpathapa";
  home.homeDirectory = "/Users/pushpathapa";

  imports = [
    ./apps/tmux.nix
    ./apps/java.nix
    ./apps/vscode.nix
  ];

  home.packages = with pkgs; [
    nixpkgs-fmt
    nodejs_20
    python3
    lua
    docker
    docker-compose
    lsd
    htop
    jq
    fzf
    neovim
  ];

  programs.home-manager.enable = true;

  home.stateVersion = "24.05";
}
