{ pkgs, ... }: {
  programs.kitty = {
    enable = true;
    themeFile = builtins.readFile ./config/kitty/kitty.conf;
  };
}
