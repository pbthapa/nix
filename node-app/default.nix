let
  pkgs = import <nixpkgs> { };
in
{
  dummy-node-app = pkgs.callPackage web/dummy-node-app.nix { };
}
