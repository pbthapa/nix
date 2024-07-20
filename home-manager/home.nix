{ pkgs, ... }: {
  home.username = "pushpathapa";
  home.homeDirectory = "/Users/pushpathapa";
  imports = import ./programs.nix { inherit pkgs; };
  home.packages = import ./packages.nix { inherit pkgs; };
  programs.home-manager.enable = true;
  home.stateVersion = "24.05";
}
