#!/bin/bash

#
# nix eval [option...] installable
# Evaluate a nix expression given on command line
# z.B. Evaluate nix expression (mathematical)
# nix eval --expr '1 + 2' --output = 3
#
# z.B.Evaluate attribute set (Nix expression) to JSON
# nix eval --json --expr '{ x = 1; }' --output = { "x": 1 }
#
# For more look into man page: nix eval --help
#
nix build -f eval.nix
