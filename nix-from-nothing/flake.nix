{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-23.11";
    flake-utils.url = "github:numtide/flake-utils";
  };

  # destructoring inputs -> outputs = { self, nixpkgs, flake-utils }...
  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
        makeScript = pkgs.writeScriptBin "foo.sh" ''
          #!/usr/bin/env bash

          echo Welcome $FOO
        '';
      in
      rec {
        packages.myhello = pkgs.hello;

        devShells.default = pkgs.mkShell {
            name = "My project build environment";
            buildInputs = [
              packages.myhello
              makeScript
            ];

            shellHook = ''
              echo "Welcome in $name"
              export FOO="bar"
            '';
          };
      });
}
