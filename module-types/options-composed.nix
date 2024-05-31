{ lib, ... }:
let
  inherit (lib) types;
in
{
  options = {
    attrsOf = lib.mkOption {
      type = types.attrsOf types.str;
      description = "This example is attrs of string";
    };

    listOf = lib.mkOption {
      type = types.listOf types.int;
      description = "This example is list of integers";
    };

    nullOr = lib.mkOption {
      type = types.nullOr types.bool;
      description = "This example is null or boolean";
    };

    either = lib.mkOption {
      type = types.either types.str types.int;
      description = "This example is either string or integer";
    };

    oneOf = lib.mkOption {
      type = types.oneOf [ types.int types.bool types.str ];
      description = "This example is one of integer, boolean or string";
    };
  };
}
