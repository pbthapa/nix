{
  description = "Practicing derivation";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-23.11";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
      in
      {
        packages.default = pkgs.stdenv.mkDerivation
          {
            name = "node-app";
            src = self;
            nativeBuildInputs = with pkgs; [ gcc ];
            buildPhase = "gcc -o hello ./hello.c";
            installPhase = "mkdir -p $out/bin; install -t $out/bin hello";
          };
      });
}
