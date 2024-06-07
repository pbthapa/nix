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
    docker
    lsd
    htop
    jq
  ];

  programs.home-manager.enable = true;

  home.stateVersion = "24.05";
}
