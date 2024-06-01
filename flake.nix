{
  description = "Package management with home-manager";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-23.11";
    #flake-utils.url = "github:numtide/flake-utils";
    home-manager = {
      url = "github:nix-community/home-manager/release-23.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, home-manager, ... }:
    let
      system = "aarch64-darwin";
      pkgs = import nixpkgs { inherit system; };
    in
    {
      defaultPackage.${system} = home-manager.defaultPackage.${system};
      homeConfigurations."pushpathapa" = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;

        modules = [
          ./home-manager/home.nix
        ];
      };
    };
}
