{ pkgs }:
let
  core = with pkgs; [
    nixpkgs-fmt
    htop
    ripgrep
    tldr
    jq
    eza
    neovim
  ];

  pythonTools = with pkgs; [
    python3
  ];

  luaTools = with pkgs; [
    lua
  ];

  nodejsTools = with pkgs; [
    nodejs_20
  ];

  rustTools = with pkgs; [
    bacon
    cargo
    clippy
    rustc
    rust-analyzer
    rustfmt
  ];
in
core
++ luaTools
++ nodejsTools
++ pythonTools
++ rustTools
