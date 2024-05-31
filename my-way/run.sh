#!/bin/bash

rm -rf target

nix-build eval.nix -A config.package --show-trace --out-link target

./target/bin/list-contents


