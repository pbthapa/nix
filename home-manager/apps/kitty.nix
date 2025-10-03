{ pkgs, ... }: {
  programs.kitty = {
    enable = true;
    extraConfig = 
    themeFile = builtins.readFile ./config/kitty/kitty.conf;
  };
}
