{ ... }: {
  programs.fzf = {
    enable = true;
    defaultOptions = [ "--height 40%" "--border" ];
    fileWidgetCommand = "find . -type f";
    fileWidgetOptions = [ "--preview 'less {}'" ];
    changeDirWidgetCommand = "find . -type d";
    changeDirWidgetOptions = [ "--preview 'less {}'" ];
  };
}
