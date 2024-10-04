{ pkgs }:
let
  core = with pkgs; [
    nixpkgs-fmt
    htop
    ripgrep
    tldr
    jq
    eza
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
    rust-analyzer
  ];
in
core
++ luaTools
++ nodejsTools
++ pythonTools
++ rustTools
