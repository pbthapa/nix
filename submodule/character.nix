{ lib, options, config, ... }:
let
  cfg = config;
  opts = options;
  inherit (lib) types;
in {
  options = {
    name = lib.mkOption {
      type = types.str;
    };

    title = lib.mkOption {
      type = types.str;
    };

    origin = lib.mkOption {
      type = types.str;
    };

    greeting = lib.mkOption {
      type = types.str;
    };
  };

  config = {
    greeting = (
      lib.concatStringsSep "\n" (
        [ "Hello" ]
        ++ (lib.optional opts.name.isDefined "I am ${cfg.name}.")
        ++ (lib.optional opts.title.isDefined "I am ${cfg.title}.")
        ++ (lib.optional opts.origin.isDefined "I come from ${cfg.origin}.")
      )
    );
  };
}