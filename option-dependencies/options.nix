{ lib, config, ... }:
let
  cfg = config;
in
{
  options = {
    name = lib.mkOption {
      type = lib.types.str;
    };

    title = lib.mkOption {
      type = lib.types.str;
    };

    origin = lib.mkOption {
      type = lib.types.str;
    };

    greeting = lib.mkOption {
      type = lib.types.str;
    };
  };

  config = {
    greeting = ''
      Hello
      My name is ${cfg.name}.
      I am ${cfg.title}.
      I come from ${cfg.origin}.
    '';
  };
}
