{ ... }:
let
  lazyVimSource = fetchGit {
    url = "https://github.com/pbthapa/lvim.git";
    rev = "5fd442e7a07c999dcb62986674bd7dfe178575f9";
  };
in
{
  home.file.".config/lazyvim".source = lazyVimSource;
}
