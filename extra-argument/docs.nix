{ nixpkgs ? builtins.fetchTarball {
      url = "https://github.com/NixOS/nixpkgs/tarball/aa94fc78b0a49ed2a4a69b6f5082a1b286dd392d";
      sha256 = "1gkm7r07aqiyfgr32bzjmhvgsd543m2g3m43janmb6z1hz17ks1n";
    }
  , pkgs ? import nixpkgs { }
  }:
  let
    evalOptions = (
      pkgs.lib.evalModules {
        # evaluate the nix modules.
        modules = [
          ./options.nix
          ({...}: { config._module.args.pkgs = pkgs; }) #if pkg was type of option, add this for documentation
        ];
      }
    );

    optionsDocs = (
      pkgs.nixosOptionsDoc {
        # nixosOptionDoc - nix pkg to generate documentation.
        options = builtins.removeAttrs evalOptions.options [ "_module" ]; # pass nix modules passed to nixosOptionDoc as options.
      }
    );
  in
  optionsDocs.optionsCommonMark # Type of document. It can be JSON, Ascii also.
