{ config, lib, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    typst
    typst-lsp
    typstfmt
  ];
}
