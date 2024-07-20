{ ... }: {

  programs.bash = {
    enable = true;
    enableCompletion = true;
    profileExtra = "${builtins.readFile config/bash/profile.bash}";
    bashrcExtra = "${builtins.readFile config/bash/bashrc.bash}";
    initExtra = "${builtins.readFile config/bash/bash_profile.bash}";
  };
}
