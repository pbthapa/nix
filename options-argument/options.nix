{ lib, options, config, ... }:
let
  cfg = config;
  opts = options;
in
{
  imports = [
    ./name.nix
    ./title.nix
    ./origin.nix
  ];

  options = {
    greeting = lib.mkOption {
      type = lib.types.str;
    };
  };

  config = {
    greeting = lib.concatStringsSep "\n" (
      [ "Hello" ]
      ++ (lib.optional opts.name.isDefined "My name is ${cfg.name}.")
      ++ (lib.optional opts.title.isDefined "I am ${cfg.title}.")
      ++ (lib.optional opts.origin.isDefined "I come from ${cfg.origin}.")
    );
  };
}
