{ pkgs, lib, config, ... }:
let
  cfg = config;
in
{
  imports = [
    ./name.nix
  ];

  options = {
    greeting = lib.mkOption {
      type = lib.types.package;
      default = "pkgs.cowsay";
      defaultText = lib.literalExpression "pkgs.cowsay";
      description = "A cowsay package.";
      example = lib.literalMD "Any *cowsay* **package**.";
    };
  };

  config = {
    greeting =
      let
        greet-name = pkgs.writeShellApplication {
          name = "greeting";
          runtimeInputs = [ pkgs.cowsay ];
          text = ''
            cowsay Hello ${cfg.name}!
          '';
        };
      in
      pkgs.runCommand
        "greeting-code-block"
        { }
        ''
          echo '```' > $out
          ${greet-name}/bin/greeting >> $out
          echo '```' >> $out
        '';
  };
}
