{
  description = "Package management with home-manager";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-24.05";
    flake-utils.url = "github:numtide/flake-utils";
    home-manager = {
      url = "github:nix-community/home-manager/release-24.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    rust-overlay = {
      url = "github:oxalica/rust-overlay";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    neovim-nightly-overlay = {
      url = "github:nix-community/neovim-nightly-overlay";
    };
  };

  outputs = { nixpkgs, home-manager, flake-utils, rust-overlay, neovim-nightly-overlay, ... }@inputs:
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
            ({ pkgs, ... }: {
              nixpkgs.overlays = [ 
                rust-overlay.overlays.default
                neovim-nightly-overlay.overlays.default
              ];
              home.packages = with pkgs; [
                rust-bin.stable.latest.default
              ];
            })
            ./home.nix
          ];

          extraSpecialArgs = { inherit inputs; };
        };
      });
}
