{ config, lib, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    python3 #compiler 
    # python310Packages.python-lsp-server #lsp
    nodePackages_latest.pyright #lsp
    ruff-lsp #linter
    ruff
    python310Packages.autopep8 #formatter
  ];
}
