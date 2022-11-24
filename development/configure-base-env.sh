#!/bin/bash
export NIXPKGS_ALLOW_UNFREE=1

nix-channel --update

echo "Installing base tools for environments..."

nix-env -i docker
nix-env -i git

echo "Script end."
