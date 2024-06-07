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
    ];
    userSettings = {
      "files.autoSave" = "true";
      "[nix]"."editor.tabSize" = 2;
    };
  };
}
