{ pkgs, ... }: {
  home.username = "pushpathapa";
  home.homeDirectory = "/Users/pushpathapa";
  home.stateVersion = "23.11";
  home.packages = [
    pkgs.nixpkgs-fmt
    pkgs.cowsay
  ];
  programs.home-manager.enable = true;
}
