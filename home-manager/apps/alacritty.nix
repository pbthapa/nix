{ ... }: {
  programs.alacritty = {
    enable = true;
    settings = {
      env.TERM = "xterm-256color";
      window = {
        decorations = "Buttonless";
        opacity = 0.5;
        blur = false;
        option_as_alt = "Both";
        dynamic_padding = true;
        padding = {
          x = 10;
          y = 10;
        };
      };

      font = {
        normal = {
          family = "MesloLGS NF";
          style = "Regular";
        };
        bold = {
          family = "MesloLGS NF";
          style = "Bold";
        };
        italic = {
          family = "MesloLGS NF";
          style = "Italic";
        };
        bold_italic = {
          family = "MesloLGS NF";
          style = "Bold Italic";
        };

        glyph_offset = { x = 0; y = 0; };

        size = 19.0;
      };

      colors = import config/alacritty/catppuccin-mocha.nix;

      keyboard = {
        bindings = [
          { key = "n"; mods = "Alt"; chars = "~"; }
          { key = "7"; mods = "Alt"; chars = "|"; }
          { key = "7"; mods = "Alt|Shift"; chars = "\\\\"; }
          { key = "l"; mods = "Alt"; chars = "@"; }
          { key = "5"; mods = "Alt"; chars = "["; }
          { key = "6"; mods = "Alt"; chars = "]"; }
          { key = "8"; mods = "Alt"; chars = "{"; }
          { key = "9"; mods = "Alt"; chars = "}"; }
        ];
      };
    };
  };
}
