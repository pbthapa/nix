{ lib, ... }: #option declaration
{
  options = {
    name = lib.mkOption
      {
        type = lib.types.str;
      };
  };
}
