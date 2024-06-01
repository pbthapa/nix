let
  pkgs = import <nixpkgs> { };
in
pkgs.stdenv.mkDerivation {
  name = "my-derivation";
  src = ./.;
  installPhase = ''
    echo Hello > $out;
  '';
}
