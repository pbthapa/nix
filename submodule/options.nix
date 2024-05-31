{ lib, config, ... }:
let
  cfg = config;
  inherit (lib) types;
in {
  options = {
    characters = lib.mkOption {
      type = types.listOf (types.submodule ./character.nix);
    };

    greeting = lib.mkOption {
      type = types.str;
    };
  };

  config = {
    greeting =
      lib.concatStringsSep
      "\n\n"
      (
        builtins.map
        (character: character.greeting)
        cfg.characters
      );
  };
}