{ config, lib, pkgs, ... }:

{
  imports = [
    ./compilers.nix
    ./debuggers.nix
    ./formatter.nix
    ./linters.nix
    ./lsp.nix
  ];
}
