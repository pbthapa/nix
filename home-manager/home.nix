{ pkgs, inputs, ... }: {
  home.username = "pushpathapa";
  home.homeDirectory = "/Users/pushpathapa";

  imports = [
    ./apps/tmux.nix
  ];

  home.packages = with pkgs; [
    nixpkgs-fmt
  ];

  programs.home-manager.enable = true;

  home.stateVersion = "23.11";
}
