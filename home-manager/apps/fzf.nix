{ ... }: {
  programs.fzf = {
    enable = true;
    defaultOptions = [ "--height 40%" "--border" ];
    fileWidgetCommand = "rg --sort-files --files --hidden  --glob '!.git/' --glob '!node_modules'";
    fileWidgetOptions = [ "--preview 'bat -n --color=always --line-range :500 {}'" ];
    changeDirWidgetCommand = "find . -type d -not \\( -path './node_modules' -prune -o -path './.git/*' -prune -o -path './.*' -prune \\)";
    changeDirWidgetOptions = [ "--preview 'eza --tree --color=always {} | head -200'" ];
    colors = {
      "bg+" = "#3B4252";
      "bg" = "#2E3440";
      "spinner" = "#81A1C1";
      "hl" = "#616E88";
      "fg" = "#D8DEE9";
      "header" = "#616E88";
      "info" = "#81A1C1";
      "pointer" = "#81A1C1";
      "marker" = "#82A1C1";
      "fg+" = "#D8DEE9";
      "prompt" = "#81A1C1";
      "hl+" = "#81A1C1";
    };
  };
}
