{
  description = "Package management with home-manager";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-24.05";
    flake-utils.url = "github:numtide/flake-utils";
    home-manager = {
      url = "github:nix-community/home-manager/release-24.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, home-manager, flake-utils, ... }@inputs:
    flake-utils.lib.eachDefaultSystem (system:
      let
        user = "pushpathapa";
        pkgs = import nixpkgs { inherit system; };
      in
      {
        #defaultPackage = home-manager.defaultPackage.${system};
        packages.homeConfigurations."${user}-${system}" = home-manager.lib.homeManagerConfiguration {
          inherit pkgs;

          modules = [
            ./home.nix
          ];

          extraSpecialArgs = { inherit inputs; };
        };
      });
}
