{ pkgs }:
(
  pkgs.lib.evalModules {
    modules = [
      ./options.nix
      ./options-composed.nix
      ./config.nix
      ./config-composed.nix
    ];
  }
).config
