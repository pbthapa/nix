let
  pkgs = import <nixpkgs> { };
in
{
  dummy-angular-app = pkgs.callPackage web/dummy-angular-app.nix { };
}
