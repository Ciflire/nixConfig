{ config, lib, pkgs, ... }:

{
  imports = [
    ./c.nix
    ./cpp.nix
    ./docker.nix
    ./html.nix
    ./java.nix
    ./go.nix
    ./java.nix
    ./javascript.nix
    ./markdown.nix
    ./nix.nix
    ./python.nix
    ./rust.nix
    ./sql.nix
    ./svelte.nix
    ./typescript.nix
    ./typst.nix
  ];
}
