{ lib, ... }:
let
  inherit (lib) types;
in
{
  options = {
    a = lib.mkOption {
      type = types.int;
      description = "This is of int type.";
    };

    b = lib.mkOption {
      type = types.bool;
      description = "This is of boolean type.";
    };

    c = lib.mkOption {
      type = types.enum [ "left" "right" ];
      description = "This is of enum type.";
    };

    d = lib.mkOption {
      type = types.str;
      description = "This is of string type.";
    };
  };
}
