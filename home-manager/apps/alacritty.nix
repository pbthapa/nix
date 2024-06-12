{ pkgs, ... }: {
  programs.alacritty = {
    enable = true;
    settings = {
      env.TERM = "xterm-256color";

      font = {
        normal = {
          family = "MesloLGS NF";
        };

        size = 19.0;
      };

      window = {
        padding = {
          x = 10;
          y = 10;
        };
        opacity = 0.8;
        blur = true;
        decorations = "Buttonless";
        option_as_alt = "Both";
      };
    };
  };
}
