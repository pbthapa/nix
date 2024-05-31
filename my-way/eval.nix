let
  nixpkgs = fetchTarball "https://github.com/NixOS/nixpkgs/tarball/nixos-22.11";
  pkgs = import nixpkgs { config = { }; overlay = { }; };
in
pkgs.lib.evalModules {
  modules = [
    ./default.nix
    ./config.nix
    ({ ... }: { config._module.args = { inherit pkgs; }; })
  ];
}

