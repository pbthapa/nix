{ pkgs, ... }: {
  programs.tmux = {
    enable = true;
    terminal = "screen-256color";
    clock24 = true;
    historyLimit = 100000;
    plugins = with pkgs; [
      tmuxPlugins.sensible
      tmuxPlugins.vim-tmux-navigator
      tmuxPlugins.yank
      {
        plugin = tmuxPlugins.catppuccin;
        extraConfig = ''
          set -g @catppuccin_flavour 'macchiato'
          set -g @catppuccin_window_tabs_enabled on
          set -g @catppuccin_user "on"
          set -g @catppuccin_host "on"
        '';
      }
      {
        plugin = tmuxPlugins.power-theme;
        extraConfig = ''
          set -g @tmux_power_theme 'forest'
          set -g @tmux_power_time_format '%H:%M:%S'
          set -g @tmux_power_date_format '%d.%m.%Y'
        '';
      }
      {
        plugin = tmuxPlugins.resurrect;
        extraConfig = ''
          set -g @resurrect-strategy-vim 'session'
          set -g @resurrect-strategy-nvim 'session'
          set -g @resurrect-capture-pane-contents 'on'
          set -g @resurrect-save 'S'
          set -g @resurrect-restore 'R'
          set -g @resurrect-dir '~/.tmux/resurrect'
        '';
      }

    ];
    extraConfig = (builtins.readFile config/tmux.conf);
  };
}
