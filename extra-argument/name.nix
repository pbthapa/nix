{ lib, ... }:
{
  options = {
    name = lib.mkOption {
      type = lib.types.str;
      default = "World!";
      description = "A name of a user";
      example = "Mr. White";
    };
  };
}
