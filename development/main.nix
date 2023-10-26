{ config, lib, pkgs, ... }:

{
  imports = [
    ./c.nix
    ./cpp.nix
    ./docker.nix
    ./java.nix
    ./go.nix
    ./java.nix
    ./javascript.nix
    ./nix.nix
    ./python.nix
    ./rust.nix
    ./svelte.nix
    ./typescript.nix
    ./typst.nix
  ];
}
