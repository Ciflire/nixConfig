{ config, lib, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    python3 #compiler 
    python310Packages.python-lsp-server #lsp
    ruff-lsp #linter
    python310Packages.autopep8 #formatter
  ];
}
