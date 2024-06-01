{ pkgs, ... }: {
  home.username = "pushpathapa";
  home.homeDirectory = "/Users/pushpathapa";
  home.stateVersion = "23.11";
  home.packages = with pkgs; [
    nixpkgs-fmt
    cowsay
    hello
  ];
  programs.home-manager.enable = true;
}
