{ pkgs, ... }: {
  home.username = "pushpathapa";
  home.homeDirectory = "/Users/pushpathapa";

  imports = [
    ./apps/tmux.nix
  ];

  home.packages = with pkgs; [
    nixpkgs-fmt
    nodejs_20
  ];

  programs.home-manager.enable = true;

  home.stateVersion = "24.05";
}
