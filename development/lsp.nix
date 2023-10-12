{ config, lib, pkgs, ...}:
{
  environment.systemPackages = with pkgs; [
    typst-lsp

    nodePackages_latest.bash-language-server

    rnix-lsp
  ];
}
