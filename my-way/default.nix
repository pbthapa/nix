{ pkgs, lib, config, ... }:
let
  cfg = config;
  inherit (lib) types;
in
{
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

  config = {
    package = pkgs.writeShellApplication {
      name = "list-contents";
      runtimeInputs = with pkgs; [ lsd ];
      text = ''
        lsd ${if cfg.showTreeView then "--tree" else "-l"} "${cfg.dir}"
      '';
    };
  };
}
