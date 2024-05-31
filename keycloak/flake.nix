{
  description = "Keycloak setup using nix";

  # Flake inputs
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/23.11";
    keycloak-nixpkgs.url = "nixpkgs/5fd8536a9a5932d4ae8de52b7dc08d92041237fc#keycloak";
  };

  # Flake outputs
  outputs = { self, nixpkgs }:
    let
      # Systems supported
      allSystems = [
        "x86_64-linux" # 64-bit Intel/AMD Linux
        "aarch64-linux" # 64-bit ARM Linux
        "x86_64-darwin" # 64-bit Intel macOS
        "aarch64-darwin" # 64-bit ARM macOS
      ];

      # Helper to provide system-specific attributes
      forAllSystems = f: nixpkgs.lib.genAttrs allSystems (system: f {
        pkgs = import nixpkgs { inherit system; };
      });
    in
    {
      # Development environment output
      devShells = forAllSystems ({ pkgs }: {
        default = pkgs.mkShell {
          # The Nix packages provided in the environment
          packages = with pkgs; [
            nodejs_18 # Node.js 18, plus npm, npx, and corepack
          ];
        };
      });
    };
}
