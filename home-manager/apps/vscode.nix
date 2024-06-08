{ pkgs, ... }: {
  nixpkgs = {
    config = {
      allowUnfree = true;
      allowUnfreePredicate = (_: true);
    };
  };

  programs.vscode = {
    enable = true;
    package = pkgs.vscode;
    enableUpdateCheck = true;
    enableExtensionUpdateCheck = true;
    extensions = with pkgs.vscode-extensions; [
      bbenoist.nix
      vscjava.vscode-spring-initializr
      vscjava.vscode-maven
      #Themes
      catppuccin.catppuccin-vsc
      catppuccin.catppuccin-vsc-icons
    ];
    userSettings = {
      "editor.fontSize" = 16;
      "editor.formatOnSave" = true;
      "editor.semanticHighlighting.enabled" = true;
      "terminal.integrated.minimumContrastRatio" = 1;
      "files.encoding" = "utf8";
      "files.eol" = "\n";
      "files.exclude" = {
        "**/node_modules/**" = true;
        "**/.git" = true;
        "**/.DS_Store" = true;
        "**/Thumbs.db" = true;
      };
      "editor.tabSize" = 2;
      "workbench.startupEditor" = "none";
      "workbench.iconTheme" = "catppuccin-mocha";
      "workbench.colorTheme" = "Catppuccin Mocha";
      "catppuccin.accentColor" = "pink";
      "terminal.external.osxExec" = "iTerm.app";
      "terminal.integrated.shell.osx" = "/bin/zsh";
      "terminal.integrated.fontFamily" = "MesloLGS NF";
      "terminal.integrated.fontSize" = 16;
    };
  };
}
