{ pkgs, lib, config, ... }:
let
  inherit (lib) types;
in
{
  options = {
    lsd = lib.mkOption {
      type = types.submodule;
      default = { };

      options = {
        dir = lib.mkOption {
          type = types.str;
          default = "/";
          description = "The directory to list";
        };

        showTreeView = lib.mkOption {
          type = types.bool;
          default = false;
          description = "Show the directory in the tree view";
        };

        package = lib.mkOption {
          type = types.package;
          readOnly = true;
        };
      };
    };
  };

  config =
    let
      cfg = config.lsd;
    in
    {
      lsd.package = pkgs.writeShellApplication {
        name = "list-contents";
        runtimeInputs = with pkgs; [ lsd ];
        text = ''
          lsd ${if cfg.showTreeView then "--tree" else "-l"} "${cfg.dir}"
        '';
      };
    };
}
