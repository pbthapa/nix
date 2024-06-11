{ ... }: {
  programs.zsh = {
    enable = false;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    initExtra = "${builtins.readFile config/zsh/config.zsh}";
  };
}
