{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-23.11";
  };

  outputs = inputs:
    let
      system = "aarch64-darwin";
      pkgs = inputs.nixpkgs.legacyPackages.${system};
    in
    {
      packages.${system}.myhello = pkgs.stdenv.mkDerivation {
        name = "hello-world";
        src = ./.;

        #packags are used during build + runtime
        nativeBuildInputs = with pkgs; [
          hello
          which
        ];

        # Not working for some weird reasons
        installPhase = ''
          mkdir -p "$out/bin"
          echo "#!/usr/bin/env bash" >> run.sh
          echo "exec $(which hello)" >> run.sh
          cp run.sh "$out/bin"
          chmod 777 "$out/bin/run.sh"
        '';
      };
    };
}
