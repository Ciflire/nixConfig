{ config, lib, pkgs, ... }:

{
  imports = [
    ./c.nix
    ./cpp.nix
    ./java.nix
    ./go.nix
    ./java.nix
    ./python.nix
    ./rust.nix
    ./typst.nix
  ];
}
