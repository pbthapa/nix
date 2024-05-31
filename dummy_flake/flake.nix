{
  description = "Practicing flakes";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-23.11";
  };

  outputs = { self, nixpkgs }:
    let
      system = "aarch64-darwin";
      pkgs = import nixpkgs { inherit system; };
      lib = pkgs.lib;
      lsdFor = settings:
        let
          result = lib.evalModules {
            modules = [
              ./lsd.nix
              settings
            ];
            specialArgs = { inherit pkgs; };
          };
        in
        result.config.lsd.package;
    in
    {
      packages.${system} = {
        default = lsdFor {
          lsd.dir = "/Users/pushpathapa/Downloads/embark";
          lsd.showTreeView = true;
        };

        catppuccin = lsdFor {
          lsd.dir = "/Users/pushpathapa/Downloads/catppuccin";
        };
      };
    };
}
