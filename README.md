# nix

stdenv.mkDerivation - function to build something from some other things.

To run packages:
nix run "nixpkgs#package_name" <parameters>
For Example:
> nix run "nixpkgs#ponysay" "Hello World!"
> echo "Hello World!" | nix run "nixpkgs#ponysay"

nix develop "github:...." - Provides nix development environment
Nix development environment are present in nix stores which are isolated and not globally available. This uses flakes present in the github repository.

nix develop "github:DeterminateSystems/zero-to-nix#javascript"
This provides development environment for nodejs. There are other language specific environments as well.

It is better to use your own local flake to create your development environment for any language specific project.

Note: If your project has git, then you need to add your flake to git, otherwise, there seems to be error where packages are not downloaded to nix store.

mkdir nix-javascript-dev && cd nix-javascript-dev
nix flake init --template "github:DeterminateSystems/zero-to-nix#javascript-dev" --This will create two flake and flake-lock file using the template provided from github repository.

git add flake.nix -- If your project have git, add flake to git to avoid error while downloading development environment to nix store.

nix develop -- create a development environment. Here flake is used to download javascript environment.

You are at nix commandline prompt. Run this command "type node", this will print that the nodejs is being used from nix store.

BUILD Packages using Nix:
In this guide
→Build a Nix package defined in Nixpkgs
→Run the package from the local directory
→Initialize a flake template in your preferred programming language
→Build a Nix package from the flake.nix in the template

