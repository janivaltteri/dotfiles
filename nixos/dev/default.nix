{ config, pkgs, ... }:

{
  imports = [
    ./devpkgs.nix
    ./pythonpkgs.nix
  ];
}

