{ ... }: {
  programs.wezterm = {
    enable = true;
    extraConfig = ''
      config = wezterm.config_builder()

      config = {
        automatically_reload_config = true,
        enable_tab_bar = false,
        window_close_confirmation = "NeverPrompt",
        window_decorations = "RESIZE",
        font = wezterm.font("MesloLGS Nerd Font Mono"),
        font_size = 19.0,
        default_cursor_style = "BlinkingBar",
        color_scheme = "Batman",
        window_background_opacity = 0.7,
        macos_window_background_blur = 10,
        colors = {
          foreground = "#CBE0F0",
      	  background = "#011423",
      	  cursor_bg = "#47FF9C",
      	  cursor_border = "#47FF9C",
      	  cursor_fg = "#011423",
      	  selection_bg = "#033259",
      	  selection_fg = "#CBE0F0",
      	  ansi = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#0FC5ED", "#a277ff", "#24EAF7", "#24EAF7" },
      	  brights = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#A277FF", "#a277ff", "#24EAF7", "#24EAF7" },
        }
      }

      return config
    '';
  };
}
