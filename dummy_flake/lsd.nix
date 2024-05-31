{ pkgs, lib, config, ... }: {

  options = {
    lsd = lib.mkOption {
      default = { };
      type = lib.types.submodule {
        options = {
          dir = lib.mkOption {
            type = lib.types.str;
            default = "";
          };

          showTreeView = lib.mkOption {
            type = lib.types.bool;
            default = false;
          };

          package = lib.mkOption {
            type = lib.types.package;
            readOnly = true;
          };
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
          lsd ${if cfg.showTreeView then "--tree" else "-l"} ${cfg.dir}
        '';
      };
    };
}
