{ pkgs, ... }: {
  programs.tmux = {
    enable = true;
    terminal = "screen-256color";
    extraConfig = (builtins.readFile ../../dotfiles/tmux.conf);
  };
}
