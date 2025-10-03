{ ... }: {

  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    plugins = [
    ];

    oh-my-zsh = {
      enable = true;
      plugins = [
        "git"
        "history"
      ];
    };

    initContent = "${builtins.readFile config/zsh/zshrc.zsh}";
  };
}
